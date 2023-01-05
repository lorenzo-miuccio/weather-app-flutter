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

class WeatherDetails {
  final double tempMin, tempMax;
  final String description;
  final String iconPath;
  final String cityId;

  WeatherDetails({required this.tempMin, required this.tempMax, required this.description, required this.iconPath, required this.cityId});

}

extension WeatherToDetailsExtension on Weather {
  WeatherDetails toDetails() => WeatherDetails(
    tempMin: tempMin,
    tempMax: tempMax,
    iconPath: iconPath,
    cityId: cityId,
    description: description,
  );
}