import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/models/weather.dart';

part 'weather_fetch_state.freezed.dart';

@freezed
class WeatherFetchState with _$WeatherFetchState {

  const factory WeatherFetchState.hasData({required Weather currentWeather}) = _WeatherFetchDataState;

  const factory WeatherFetchState.loading() = _WeatherFetchLoadingState;

  const factory WeatherFetchState.error({String? message}) = _WeatherFetchError;

  const factory WeatherFetchState.noConnectionError({String? message}) = _WeatherFetchNoConnectionError;
}
