// class containing all weather information used by the app to display the current weather
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/weather_entity.dart';

import 'main_weather_entity.dart';
import 'sun_times_entity.dart';
import 'weather_description_entity.dart';
import 'wind_entity.dart';

part 'weather_api_response.g.dart';

@JsonSerializable()
class WeatherApiResponse {
  final List<WeatherDescriptionEntity> weather;
  final MainWeatherEntity main;
  final WindEntity wind;

  @JsonKey(name: 'name')
  final String cityName;

  final SunTimesEntity sys;

  @JsonKey(name: 'timezone')
  final int timezoneInSeconds;

  WeatherApiResponse(
      {required this.weather,
      required this.main,
      required this.wind,
      required this.sys,
      required this.timezoneInSeconds,
      required this.cityName});

  // method used to retrieve a new instance from the response of the API call
  factory WeatherApiResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiResponseFromJson(json);
}


