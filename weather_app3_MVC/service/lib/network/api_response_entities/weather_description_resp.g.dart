// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_description_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDescriptionResp _$WeatherDescriptionRespFromJson(
        Map<String, dynamic> json) =>
    WeatherDescriptionResp(
      description: json['main'] as String,
      iconPath:
          WeatherDescriptionResp._iconPathFromJson(json['icon'] as String),
    );

Map<String, dynamic> _$WeatherDescriptionRespToJson(
        WeatherDescriptionResp instance) =>
    <String, dynamic>{
      'icon': instance.iconPath,
      'main': instance.description,
    };
