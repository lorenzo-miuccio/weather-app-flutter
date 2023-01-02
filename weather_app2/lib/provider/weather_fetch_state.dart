import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather.dart';

part 'weather_fetch_state.freezed.dart';

@freezed
class WeatherFetchState with _$WeatherFetchState {
  const factory WeatherFetchState({required Weather currentWeather}) = _WeatherData;
  const factory WeatherFetchState.loading() = _LoadingWeatherData;
  const factory WeatherFetchState.error({String? message}) = _ErrorWeatherFetching;
  const factory WeatherFetchState.noConnectionError({String? message}) = _NoConnectionError;
}