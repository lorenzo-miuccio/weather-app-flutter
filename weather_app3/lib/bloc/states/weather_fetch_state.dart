import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/weather.dart';

part 'weather_fetch_state.freezed.dart';

@freezed
class WeatherFetchState with _$WeatherFetchState {
  const WeatherFetchState._();

  @override
  City get selectedCity => map(
        hasData: (state) => state.selectedCity,
        loading: (state) => state.selectedCity,
        error: (state) => state.selectedCity,
        noConnectionError: (state) => state.selectedCity,
      );

  const factory WeatherFetchState.hasData(
      {required WeatherInterface currentWeather, required City selectedCity}) = _WeatherData;

  const factory WeatherFetchState.loading({required City selectedCity}) = _LoadingWeatherData;

  const factory WeatherFetchState.error({required City selectedCity, String? message}) =
      _ErrorWeatherFetching;

  const factory WeatherFetchState.noConnectionError({required City selectedCity, String? message}) =
      _NoConnectionError;
}
