import 'package:dio/dio.dart';
import 'package:weather_app/models/api_response_entities/main_weather_entity.dart';
import 'package:weather_app/models/api_response_entities/sun_times_entity.dart';
import 'package:weather_app/models/api_response_entities/weather_api_resp.dart';
import 'package:weather_app/models/api_response_entities/wind_entity.dart';
import 'package:weather_app/services/api_extensions.dart';

import 'network/weather_api.dart';

abstract class WeatherApiService {
  Future<WeatherApiResp> getWeatherByCityId(String cityId);
}

class WeatherApiServiceImpl implements WeatherApiService {
  final WeatherApi _api =
      WeatherApi(Dio()..interceptors.add(_WeatherApiServiceInterceptor()));

  @override
  Future<WeatherApiResp> getWeatherByCityId(String cityId) =>
      _api.GETWeatherByCityId(cityId: cityId).catchApiRequestErrors();
}

class WeatherApiServiceMock implements WeatherApiService {
  @override
  Future<WeatherApiResp> getWeatherByCityId(String cityId) => Future.value(
        WeatherApiResp(
          weather: [],
          main: MainWeatherEntity(temp: 30, humidity: 60),
          wind: WindEntity(speed: 20),
          timezoneInSeconds: 3600,
          sunTimes: SunTimesEntity(
            sunset: DateTime.now(),
            sunrise: DateTime.now(),
          ),
        ),
      );
}

class _WeatherApiServiceInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.receiveTimeout = const Duration(milliseconds: 5000);
    options.connectTimeout = const Duration(milliseconds: 3000);

    return handler.next(options);
  }
}
