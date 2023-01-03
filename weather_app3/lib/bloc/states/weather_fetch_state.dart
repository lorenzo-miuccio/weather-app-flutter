import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather.dart';

part 'weather_fetch_state.freezed.dart';

@freezed
class WeatherFetchState with _$WeatherFetchState {
  const WeatherFetchState._();

  @override
  String get selectedCityId => map(
        hasData: (state) => state.selectedCityId,
        loading: (state) => state.selectedCityId,
        error: (state) => state.selectedCityId,
        noConnectionError: (state) => state.selectedCityId,
      );

  const factory WeatherFetchState.hasData(
      {required Weather currentWeather, required String selectedCityId}) = _WeatherFetchDataState;

  const factory WeatherFetchState.loading({required String selectedCityId}) = _WeatherFetchLoadingState;

  const factory WeatherFetchState.error({required String selectedCityId, String? message}) =
      _WeatherFetchError;

  const factory WeatherFetchState.noConnectionError({required String selectedCityId, String? message}) =
      _WeatherFetchNoConnectionError;
}
