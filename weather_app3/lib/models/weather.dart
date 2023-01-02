// class containing all weather information used by the app to display the current weather
import 'package:floor/floor.dart';

abstract class WeatherInterface {}

@entity
class Weather implements WeatherInterface {
  @primaryKey
  final String cityId;

  final String iconPath;
  final double temperature;
  final double windSpeed;
  final int humidity;
  final DateTime sunrise;
  final DateTime sunset;
  final DateTime lastRemoteFetch;
  final double tempMin, tempMax;
  final String description;

  Weather({
    required this.lastRemoteFetch,
    required this.tempMax,
    required this.description,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
    required this.iconPath,
    required this.tempMin,
    required this.cityId,
  });

  @override
  String toString() => '$cityId: $temperature';
}
