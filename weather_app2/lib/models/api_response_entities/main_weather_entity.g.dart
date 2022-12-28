// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainWeatherEntity _$MainWeatherEntityFromJson(Map<String, dynamic> json) =>
    MainWeatherEntity(
      temp: (json['temp'] as num).toDouble(),
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$MainWeatherEntityToJson(MainWeatherEntity instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };
