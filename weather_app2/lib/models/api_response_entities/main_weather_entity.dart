
import 'package:json_annotation/json_annotation.dart';
part 'main_weather_entity.g.dart';

@JsonSerializable()
class MainWeatherEntity {

  double temp;
  int humidity;

  MainWeatherEntity({required this.temp, required this.humidity});

  factory MainWeatherEntity.fromJson(Map<String, dynamic> json) => _$MainWeatherEntityFromJson(json);

}