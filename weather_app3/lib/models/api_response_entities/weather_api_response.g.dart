// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponse _$WeatherApiResponseFromJson(Map<String, dynamic> json) =>
    WeatherApiResponse(
      weather: (json['weather'] as List<dynamic>)
          .map((e) =>
              WeatherDescriptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: MainWeatherEntity.fromJson(json['main'] as Map<String, dynamic>),
      wind: WindEntity.fromJson(json['wind'] as Map<String, dynamic>),
      sunTimes: SunTimesEntity.fromJson(json['sys'] as Map<String, dynamic>),
      timezoneInSeconds: json['timezone'] as int,
    );

Map<String, dynamic> _$WeatherApiResponseToJson(WeatherApiResponse instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'sys': instance.sunTimes,
      'timezone': instance.timezoneInSeconds,
    };
