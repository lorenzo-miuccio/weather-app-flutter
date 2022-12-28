
import 'package:json_annotation/json_annotation.dart';
part 'wind_entity.g.dart';

@JsonSerializable()
class WindEntity {

  @JsonKey(fromJson: _speedFromJson)
  double speed;

  static double _speedFromJson(double windSpeed) => windSpeed * 3.6;

  WindEntity({required this.speed});

  factory WindEntity.fromJson(Map<String, dynamic> json) => _$WindEntityFromJson(json);

}