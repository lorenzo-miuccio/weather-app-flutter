import 'package:flutter/cupertino.dart';
import 'package:weather_app/bloc/states/weather_fetch_state.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather/weather_repository.dart';
import 'package:weather_app/models/data_error.dart';

class WeatherController extends InheritedWidget {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;
  final WeatherCubit _cubit;

  const WeatherController(
      {required CitiesRepository citiesRepo,
      required WeatherCubit cubit,
      required WeatherRepository weatherRepo,
      super.key,
      required super.child})
      : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        _cubit = cubit;

  void newSelectedCity(String newCityId) =>
      _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(forceRemoteFetch: true));

  void refreshWeatherData({bool forceRemoteFetch = false}) {
    _cubit.setFetchState(const WeatherFetchState.loading());
    _weatherRepo.getWeatherByCityId(getSelectedCityId(), forceRemoteFetch: forceRemoteFetch).then(
          (value) => value.fold(
            (e) => _cubit.setFetchState(e.toWeatherFetchState()),
            (value) => _cubit.setFetchState(WeatherFetchState.hasData(
              currentWeather: value,
            )),
          ),
        );
  }

  String getSelectedCityId() => _citiesRepo.keyValueService.getSavedCityId();

  static WeatherController of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<WeatherController>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

extension _DataErrorToWeatherFetchStateExtension on DataError {
  WeatherFetchState toWeatherFetchState() => maybeMap(
        noConnection: (nc) => const WeatherFetchState.noConnectionError(),
        orElse: () => const WeatherFetchState.error(),
      );
}
