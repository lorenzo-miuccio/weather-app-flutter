import 'package:weather_app/domain/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/domain/models/weather.dart';

abstract class WeatherApiService {
  Future<WeatherResp> getWeatherByCityId(String cityId);
}

abstract class WeatherDBService {
  Future<Weather?> getWeatherByCityId(String cityId);

  Future<void> insertWeather(Weather weather);
}
