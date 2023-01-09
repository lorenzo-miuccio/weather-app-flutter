import 'package:domain/models/data_error.dart';
import 'package:domain/models/weather.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:domain/repositories/weather/weather_repository.dart';
import 'package:get_it/get_it.dart';

abstract class WeatherCubitInterface {
  void emitLoadingState();

  void emitErrorState(DataError error);

  void emitDataState(Weather weatherData);
}

class WeatherController {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;
  final WeatherCubitInterface _cubit;

  const WeatherController({
    required CitiesRepository citiesRepo,
    required WeatherCubitInterface cubit,
    required WeatherRepository weatherRepo,
  })  : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        _cubit = cubit;

  void newSelectedCity(String newCityId) =>
      _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(forceRemoteFetch: true));

  void refreshWeatherData({bool forceRemoteFetch = false}) {
    _cubit.emitLoadingState();
    _weatherRepo.getWeatherByCityId(getSelectedCityId(), forceRemoteFetch: forceRemoteFetch).then(
          (value) => value.fold(
            (e) => _cubit.emitErrorState(e),
            (value) => _cubit.emitDataState(value),
          ),
        );
  }

  static WeatherController get instance => GetIt.instance<WeatherController>();

  String getSelectedCityId() => _citiesRepo.keyValueService.getSavedCityId();
}
