// class containing all weather information used by the app to display the current weather
import 'package:json_annotation/json_annotation.dart';

import 'main_weather_entity.dart';
import 'sun_times_entity.dart';
import 'weather_description_entity.dart';
import 'wind_entity.dart';

part 'weather_api_resp.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherApiResp {
  final List<WeatherDescriptionEntity> weather;
  final MainWeatherEntity main;
  final WindEntity wind;

  @JsonKey(name: 'sys')
  final SunTimesEntity sunTimes;

  @JsonKey(name: 'timezone')
  final int timezoneInSeconds;

  WeatherApiResp(
      {required this.weather,
      required this.main,
      required this.wind,
      required this.sunTimes,
      required this.timezoneInSeconds});

  // method used to retrieve a new instance from the response of the API call
  factory WeatherApiResp.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiRespFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherApiRespToJson(this);
}
