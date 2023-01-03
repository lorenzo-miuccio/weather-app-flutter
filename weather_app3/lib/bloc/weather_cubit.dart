import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states/weather_fetch_state.dart';

class WeatherCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;

  WeatherCubit({required CitiesRepository citiesRepo, required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        super(WeatherFetchState.loading(selectedCityId: citiesRepo.getCityKeyValue()));

  void newSelectedCity(String newCityId) =>
      _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(cityId: newCityId));

  void refreshWeatherData({String? cityId}) {
    cityId ??= state.selectedCityId;
    emit(WeatherFetchState.loading(selectedCityId: state.selectedCityId));
    _weatherRepo
        .getWeatherByCityId(cityId)
        .then((value) => emit(WeatherFetchState.hasData(currentWeather: value, selectedCityId: cityId!)))
        .catchError((e) {
      if (e is ConnectionException) {
        emit(WeatherFetchState.noConnectionError(selectedCityId: cityId!));
      } else {
        emit(WeatherFetchState.error(selectedCityId: cityId!));
      }
    });
  }
}
