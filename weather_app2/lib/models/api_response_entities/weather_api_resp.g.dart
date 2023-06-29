// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResp _$WeatherApiRespFromJson(Map<String, dynamic> json) =>
    WeatherApiResp(
      weather: (json['weather'] as List<dynamic>)
          .map((e) =>
              WeatherDescriptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainWeatherEntity.fromJson(json['main'] as Map<String, dynamic>),
      wind: WindEntity.fromJson(json['wind'] as Map<String, dynamic>),
      sunTimes: SunTimesEntity.fromJson(json['sys'] as Map<String, dynamic>),
      timezoneInSeconds: json['timezone'] as int,
    );

Map<String, dynamic> _$WeatherApiRespToJson(WeatherApiResp instance) =>
    <String, dynamic>{
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'main': instance.main.toJson(),
      'wind': instance.wind.toJson(),
      'sys': instance.sunTimes.toJson(),
      'timezone': instance.timezoneInSeconds,
    };
