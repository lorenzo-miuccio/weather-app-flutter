// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMainResp _$WeatherMainRespFromJson(Map<String, dynamic> json) =>
    WeatherMainResp(
      temp: (json['temp'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$WeatherMainRespToJson(WeatherMainResp instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'humidity': instance.humidity,
    };
