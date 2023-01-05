// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResp _$WeatherRespFromJson(Map<String, dynamic> json) => WeatherResp(
      weather: (json['weather'] as List<dynamic>)
          .map(
              (e) => WeatherDescriptionResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: WeatherMainResp.fromJson(json['main'] as Map<String, dynamic>),
      wind: WeatherWindResp.fromJson(json['wind'] as Map<String, dynamic>),
      sys: WeatherSunTimesResp.fromJson(json['sys'] as Map<String, dynamic>),
      timezoneInSeconds: json['timezone'] as int,
      cityName: json['name'] as String,
    );

Map<String, dynamic> _$WeatherRespToJson(WeatherResp instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'name': instance.cityName,
      'sys': instance.sys,
      'timezone': instance.timezoneInSeconds,
    };
