
import 'package:json_annotation/json_annotation.dart';
part 'weather_sun_times_resp.g.dart';

@JsonSerializable()
class WeatherSunTimesResp {

  @EpochDateTimeConverter()
  final DateTime sunrise, sunset;

  @JsonKey(name: 'country')
  final String countryId;

  WeatherSunTimesResp({required this.sunrise, required this.sunset, required this.countryId});

  factory WeatherSunTimesResp.fromJson(Map<String, dynamic> json) => _$WeatherSunTimesRespFromJson(json);

}

class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json* 1000,
      isUtc: true);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}