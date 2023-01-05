import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/models/data_error.dart';

import 'states/weather_fetch_state.dart';

class WeatherCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;

  WeatherCubit({required CitiesRepository citiesRepo, required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        super(WeatherFetchState.loading(selectedCityId: citiesRepo.getCityKeyValue()));

  void newSelectedCity(String newCityId) => _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(remote: true));

  void refreshWeatherData({bool remote = false}) {
    final cityId = _getSelectedCityId();
    emit(WeatherFetchState.loading(selectedCityId: cityId));
    _weatherRepo.getWeatherByCityId(cityId, remote: remote).then(
          (value) => value.fold(
            (e) => emit(e.toWeatherFetchState(cityId)),
            (value) => emit(WeatherFetchState.hasData(currentWeather: value, selectedCityId: cityId)),
          ),
        );
  }

  String _getSelectedCityId() => _citiesRepo.keyValueService.getSavedCityId();
}

extension _DataErrorToWeatherFetchStateExtension on DataError {
  WeatherFetchState toWeatherFetchState(String cityId) => maybeMap(
        noConnection: (nc) => WeatherFetchState.noConnectionError(selectedCityId: cityId),
        orElse: () => WeatherFetchState.error(selectedCityId: cityId),
      );
}

