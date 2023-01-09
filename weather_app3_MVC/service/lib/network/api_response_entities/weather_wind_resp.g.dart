// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_wind_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherWindResp _$WeatherWindRespFromJson(Map<String, dynamic> json) =>
    WeatherWindResp(
      speed: WeatherWindResp._speedFromJson(json['speed'] as double),
    );

Map<String, dynamic> _$WeatherWindRespToJson(WeatherWindResp instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };
