import 'package:domain/models/data_error.dart';
import 'package:domain/models/weather.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:domain/repositories/weather/weather_repository.dart';

abstract class WeatherControllerListener {
  void onLoading();

  void onGenericError(DataError error);

  void onData(Weather weatherData);
}

class WeatherController {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;
  final WeatherControllerListener _cubit;

  const WeatherController({
    required CitiesRepository citiesRepo,
    required WeatherControllerListener cubit,
    required WeatherRepository weatherRepo,
  })  : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        _cubit = cubit;

  void newSelectedCity(String newCityId) =>
      _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(forceRemoteFetch: true));

  void refreshWeatherData({bool forceRemoteFetch = false}) {
    _cubit.onLoading();
    _weatherRepo.getWeatherByCityId(getSelectedCityId(), forceRemoteFetch: forceRemoteFetch).then(
          (value) => value.fold(
            (e) => _cubit.onGenericError(e),
            (value) => _cubit.onData(value),
          ),
        );
  }

  String getSelectedCityId() => _citiesRepo.keyValueService.getSavedCityId();
}
