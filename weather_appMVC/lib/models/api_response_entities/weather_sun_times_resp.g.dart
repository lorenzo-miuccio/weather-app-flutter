// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_sun_times_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherSunTimesResp _$WeatherSunTimesRespFromJson(Map<String, dynamic> json) =>
    WeatherSunTimesResp(
      sunrise: const EpochDateTimeConverter().fromJson(json['sunrise'] as int),
      sunset: const EpochDateTimeConverter().fromJson(json['sunset'] as int),
      countryId: json['country'] as String,
    );

Map<String, dynamic> _$WeatherSunTimesRespToJson(
        WeatherSunTimesResp instance) =>
    <String, dynamic>{
      'sunrise': const EpochDateTimeConverter().toJson(instance.sunrise),
      'sunset': const EpochDateTimeConverter().toJson(instance.sunset),
      'country': instance.countryId,
    };
