import 'package:domain/cities_repository.dart';
import 'package:domain/models/data_error.dart';
import 'package:domain/weather/weather_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/ui/bloc/states/weather_fetch_state.dart';


class WeatherCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;

  WeatherCubit({required CitiesRepository citiesRepo, required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        _citiesRepo = citiesRepo,
        super(const WeatherFetchState.loading());

  void newSelectedCity(String newCityId) => _citiesRepo.updateCityKeyValue(newCityId).then((_) => refreshWeatherData(remote: true));

  void refreshWeatherData({bool remote = false}) {

    emit(const WeatherFetchState.loading());
    _weatherRepo.getWeatherByCityId(getSelectedCityId(), remote: remote).then(
          (value) => value.fold(
            (e) => emit(e.toWeatherFetchState()),
            (value) => emit(WeatherFetchState.hasData(currentWeather: value,)),
          ),
        );
  }

  String getSelectedCityId() => _citiesRepo.getCityKeyValue();

}

extension _DataErrorToWeatherFetchStateExtension on DataError {
  WeatherFetchState toWeatherFetchState() => maybeMap(
        noConnection: (nc) => const WeatherFetchState.noConnectionError(),
        orElse: () => const WeatherFetchState.error(),
      );
}

