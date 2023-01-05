import 'package:domain/models/weather.dart';

abstract class WeatherApiService {
  Future<Weather> getWeatherByCityId(String cityId);
}

abstract class WeatherDBService {
  Future<Weather?> getWeatherByCityId(String cityId);

  Future<void> insertWeather(Weather weather);
}
