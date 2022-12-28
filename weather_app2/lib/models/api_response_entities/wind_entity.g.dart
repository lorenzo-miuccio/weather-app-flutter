// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindEntity _$WindEntityFromJson(Map<String, dynamic> json) => WindEntity(
      speed: WindEntity._speedFromJson(json['speed'] as double),
    );

Map<String, dynamic> _$WindEntityToJson(WindEntity instance) =>
    <String, dynamic>{
      'speed': instance.speed,
    };
