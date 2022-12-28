
import 'package:json_annotation/json_annotation.dart';
part 'main_weather_entity.g.dart';

@JsonSerializable()
class MainWeatherEntity {

  final double temp;
  final double tempMin;
  final double tempMax;
  final int humidity;

  MainWeatherEntity({required this.temp, required this.tempMax, required this.tempMin, required this.humidity});

  factory MainWeatherEntity.fromJson(Map<String, dynamic> json) => _$MainWeatherEntityFromJson(json);

}