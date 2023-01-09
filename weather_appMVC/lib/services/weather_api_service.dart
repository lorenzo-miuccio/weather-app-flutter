import 'package:dio/dio.dart';
import 'package:weather_app/domain/weather/weather_services.dart';
import 'package:weather_app/models/api_response_entities/weather_main_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_sun_times_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_wind_resp.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/api_extensions.dart';

import 'network/weather_api.dart';

class WeatherApiServiceImpl implements WeatherApiService {
  final WeatherApi _api = WeatherApi(Dio()..interceptors.add(_WeatherApiServiceInterceptor()));

  @override
  Future<Weather> getWeatherByCityId(String cityId) =>
      _api.GETWeatherByCityId(cityId: cityId).catchApiRequestErrors().then((value) => value.toEntity());
}

class WeatherApiServiceMock implements WeatherApiService {
  @override
  Future<Weather> getWeatherByCityId(String cityId) => Future.value(
        WeatherResp(
          weather: [],
          main: WeatherMainResp(temp: 30, humidity: 60, tempMax: 33, tempMin: 25),
          wind: WeatherWindResp(speed: 20),
          timezoneInSeconds: 3600,
          sys: WeatherSunTimesResp(
            sunset: DateTime.now(),
            sunrise: DateTime.now(),
            countryId: '',
          ),
          cityName: '',
        ).toEntity(),
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

extension _WeatherRespToEntityExtension on WeatherResp {
  Weather toEntity() {
    String iconPath = weather[0].iconPath;
    String description = weather[0].description;

    DateTime sunrise = sys.sunrise.add(Duration(seconds: timezoneInSeconds));
    DateTime sunset = sys.sunset.add(Duration(seconds: timezoneInSeconds));

    return Weather(
      lastRemoteFetch: DateTime.now(),
      temperature: main.temp,
      humidity: main.humidity,
      windSpeed: wind.speed,
      sunset: sunset,
      sunrise: sunrise,
      iconPath: iconPath,
      tempMax: main.tempMax,
      tempMin: main.tempMin,
      description: description,
      cityId: '$cityName, ${sys.countryId}',
    );
  }
}
