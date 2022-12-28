
import 'package:json_annotation/json_annotation.dart';
part 'weather_main_resp.g.dart';

@JsonSerializable()
class WeatherMainResp {

  final double temp;
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @JsonKey(name: 'temp_max')
  final double tempMax;
  final int humidity;

  WeatherMainResp({required this.temp, required this.tempMax, required this.tempMin, required this.humidity});

  factory WeatherMainResp.fromJson(Map<String, dynamic> json) => _$WeatherMainRespFromJson(json);

}