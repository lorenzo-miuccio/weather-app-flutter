import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_events.freezed.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchRequested(String cityId) = WeatherFetchReq;
}
