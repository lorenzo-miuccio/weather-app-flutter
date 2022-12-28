import 'package:dio/dio.dart';
import 'package:weather_app/models/api_response_entities/weather_main_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_sun_times_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_wind_resp.dart';
import 'package:weather_app/services/api_extensions.dart';

import 'network/weather_api.dart';

abstract class WeatherApiService {
  Future<WeatherResp> getWeatherByCityId(String cityId);
}

class WeatherApiServiceImpl implements WeatherApiService {
  final WeatherApi _api =
      WeatherApi(Dio()..interceptors.add(_WeatherApiServiceInterceptor()));

  @override
  Future<WeatherResp> getWeatherByCityId(String cityId) =>
      _api.GETWeatherByCityId(cityId: cityId).catchApiRequestErrors();
}

class WeatherApiServiceMock implements WeatherApiService {
  @override
  Future<WeatherResp> getWeatherByCityId(String cityId) => Future.value(
        WeatherResp(
          weather: [],
          main: WeatherMainResp(temp: 30, humidity: 60, tempMax: 33, tempMin: 25),
          wind: WeatherWindResp(speed: 20),
          timezoneInSeconds: 3600,
          sys: WeatherSunTimesResp(
            sunset: DateTime.now(),
            sunrise: DateTime.now(),
            countryId: '',
          ), cityName: '',
        ),
      );
}

class _WeatherApiServiceInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.receiveTimeout = 5000;
    options.connectTimeout = 3000;

    return handler.next(options);
  }
}
