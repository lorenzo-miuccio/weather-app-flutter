// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_description_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDescriptionEntity _$WeatherDescriptionEntityFromJson(
        Map<String, dynamic> json) =>
    WeatherDescriptionEntity(
      iconPath:
          WeatherDescriptionEntity._iconPathFromJson(json['icon'] as String),
    );

Map<String, dynamic> _$WeatherDescriptionEntityToJson(
        WeatherDescriptionEntity instance) =>
    <String, dynamic>{
      'icon': instance.iconPath,
    };
