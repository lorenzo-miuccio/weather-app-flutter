
import 'package:json_annotation/json_annotation.dart';
part 'weather_description_entity.g.dart';

@JsonSerializable()
class WeatherDescriptionEntity {

  @JsonKey(name: 'icon',fromJson: _iconPathFromJson)
  String iconPath;

  WeatherDescriptionEntity({required this.iconPath});

  factory WeatherDescriptionEntity.fromJson(Map<String, dynamic> json) => _$WeatherDescriptionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDescriptionEntityToJson(this);

  static String _iconPathFromJson(String iconId) => 'http://openweathermap.org/img/wn/$iconId@2x.png';
}