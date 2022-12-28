
import 'package:json_annotation/json_annotation.dart';
part 'weather_wind_resp.g.dart';

@JsonSerializable()
class WeatherWindResp {

  @JsonKey(fromJson: _speedFromJson)
  double speed;

  static double _speedFromJson(double windSpeed) => windSpeed * 3.6;

  WeatherWindResp({required this.speed});

  factory WeatherWindResp.fromJson(Map<String, dynamic> json) => _$WeatherWindRespFromJson(json);

}