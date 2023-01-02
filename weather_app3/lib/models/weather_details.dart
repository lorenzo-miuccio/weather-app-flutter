import 'package:weather_app/models/weather.dart';

class WeatherDetails implements WeatherInterface{
  final double tempMin, tempMax;
  final String description;
  final String iconPath;
  final String cityId;

  WeatherDetails({required this.tempMin, required this.tempMax, required this.description, required this.iconPath, required this.cityId});

}
