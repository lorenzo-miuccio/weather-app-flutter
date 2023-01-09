// class containing all weather information used by the app to display the current weather
import 'package:json_annotation/json_annotation.dart';

import 'weather_main_resp.dart';
import 'weather_sun_times_resp.dart';
import 'weather_description_resp.dart';
import 'weather_wind_resp.dart';

part 'weather_resp.g.dart';

@JsonSerializable()
class WeatherResp {
  final List<WeatherDescriptionResp> weather;
  final WeatherMainResp main;
  final WeatherWindResp wind;

  @JsonKey(name: 'name')
  final String cityName;

  final WeatherSunTimesResp sys;

  @JsonKey(name: 'timezone')
  final int timezoneInSeconds;

  WeatherResp({
    required this.weather,
    required this.main,
    required this.wind,
    required this.sys,
    required this.timezoneInSeconds,
    required this.cityName,
  });

  // method used to retrieve a new instance from the response of the API call
  factory WeatherResp.fromJson(Map<String, dynamic> json) => _$WeatherRespFromJson(json);
}
