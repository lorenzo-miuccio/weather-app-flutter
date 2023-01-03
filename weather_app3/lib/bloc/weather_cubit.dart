import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states/weather_fetch_state.dart';

class WeatherCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;

  // no future getIstance
  static Future<WeatherCubit> getInstance(
          {required CitiesRepository citiesRepo, required WeatherRepository weatherRepo}) async =>
      await citiesRepo
          .getCityKeyValue()
          .then((savedCityId) => WeatherCubit._(citiesRepo, weatherRepo, savedCityId));

  WeatherCubit._(this._citiesRepo, this._weatherRepo, String savedCityId)
      : super(WeatherFetchState.loading(selectedCityId: savedCityId));

  Future<void> newSelectedCity(String newCityId) async {
    await _citiesRepo
        .updateCityKeyValue(newCityId)
        .then((_) => emit(WeatherFetchState.loading(selectedCityId: newCityId)));

    await _fetchWeather();
  }

  Future<void> refreshWeatherData() async {
    emit(WeatherFetchState.loading(selectedCityId: state.selectedCityId));
    await _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    final String id = state.selectedCityId;
    await _weatherRepo
        .getWeatherByCityId(id)
        .then((value) => emit(WeatherFetchState.hasData(currentWeather: value, selectedCityId: id)))
        .catchError((e) {
      if (e is ConnectionException) {
        emit(WeatherFetchState.noConnectionError(selectedCityId: id));
      } else {
        emit(WeatherFetchState.error(selectedCityId: id));
      }
    });
  }
}
