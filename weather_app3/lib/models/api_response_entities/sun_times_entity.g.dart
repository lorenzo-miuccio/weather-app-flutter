// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sun_times_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SunTimesEntity _$SunTimesEntityFromJson(Map<String, dynamic> json) =>
    SunTimesEntity(
      sunrise: const EpochDateTimeConverter().fromJson(json['sunrise'] as int),
      sunset: const EpochDateTimeConverter().fromJson(json['sunset'] as int),
    );

Map<String, dynamic> _$SunTimesEntityToJson(SunTimesEntity instance) =>
    <String, dynamic>{
      'sunrise': const EpochDateTimeConverter().toJson(instance.sunrise),
      'sunset': const EpochDateTimeConverter().toJson(instance.sunset),
    };
