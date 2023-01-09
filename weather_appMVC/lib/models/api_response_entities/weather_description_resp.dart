
import 'package:json_annotation/json_annotation.dart';
part 'weather_description_resp.g.dart';

@JsonSerializable()
class WeatherDescriptionResp {

  @JsonKey(name: 'icon',fromJson: _iconPathFromJson)
  final String iconPath;
  @JsonKey(name: 'main')
  final String description;

  WeatherDescriptionResp({required this.description, required this.iconPath});

  factory WeatherDescriptionResp.fromJson(Map<String, dynamic> json) => _$WeatherDescriptionRespFromJson(json);

  static String _iconPathFromJson(String iconId) => 'http://openweathermap.org/img/wn/$iconId@2x.png';
}