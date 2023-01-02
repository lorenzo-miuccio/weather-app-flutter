// class containing all weather information used by the app to display the current weather
import 'package:floor/floor.dart';

@entity
class Weather {
  @primaryKey
  final String cityId;

  final String iconPath;
  final double temperature;
  final double windSpeed;
  final int humidity;
  final DateTime sunrise;
  final DateTime sunset;
  final double tempMin, tempMax;
  final String description;

  Weather({
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