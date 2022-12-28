
import 'package:json_annotation/json_annotation.dart';
part 'sun_times_entity.g.dart';

@JsonSerializable()
class SunTimesEntity {

  @EpochDateTimeConverter()
  DateTime sunrise, sunset;

  SunTimesEntity({required this.sunrise, required this.sunset});

  factory SunTimesEntity.fromJson(Map<String, dynamic> json) => _$SunTimesEntityFromJson(json);

}

class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json* 1000,
      isUtc: true);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}