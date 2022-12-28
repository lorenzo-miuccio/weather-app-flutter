
import 'package:json_annotation/json_annotation.dart';
part 'weather_description_entity.g.dart';

@JsonSerializable()
class WeatherDescriptionEntity {

  @JsonKey(name: 'icon',fromJson: _iconPathFromJson)
  final String iconPath;
  @JsonKey(name: 'main')
  final String description;

  WeatherDescriptionEntity({required this.description, required this.iconPath});

  factory WeatherDescriptionEntity.fromJson(Map<String, dynamic> json) => _$WeatherDescriptionEntityFromJson(json);

  static String _iconPathFromJson(String iconId) => 'http://openweathermap.org/img/wn/$iconId@2x.png';
}