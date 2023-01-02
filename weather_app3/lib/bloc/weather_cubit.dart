import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/city.dart';

import 'states/weather_fetch_state.dart';

class WeatherCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;
  final CitiesRepository _citiesRepo;

  static Future<WeatherCubit> getInstance(
      {required CitiesRepository citiesRepo, required WeatherRepository weatherRepo}) async {
    final String preferredCityId = await citiesRepo.getCityKeyValue();

    const citiesList = CitiesRepository.cities;

    City preferredCity = citiesList.firstWhere((city) => city.id == preferredCityId);

    return WeatherCubit._(citiesRepo, weatherRepo, preferredCity);
  }

  WeatherCubit._(this._citiesRepo, this._weatherRepo, City savedCity)
      : super(WeatherFetchState.loading(selectedCity: savedCity));

  Future<void> newSelectedCity(City newCity) async {
    await _citiesRepo
        .updateCityKeyValue(newCity.id)
        .then((_) => emit(WeatherFetchState.loading(selectedCity: newCity)));

    await _fetchWeather();
  }

  Future<void> refreshWeatherData() async {
    emit(WeatherFetchState.loading(selectedCity: state.selectedCity));
    await _fetchWeather();
  }


  Future<void> _fetchWeather() async {
    final City city = state.selectedCity;
    //emit(WeatherFetchState.loading(selectedCity: city));
    await _weatherRepo
        .getWeatherByCityId(city.id)
        .then((value) => emit(WeatherFetchState.hasData(currentWeather: value, selectedCity: city)))
        .catchError((e) {
      if (e is ConnectionException) {
        emit(WeatherFetchState.noConnectionError(selectedCity: city));
      } else {
        emit(WeatherFetchState.error(selectedCity: city));
      }
    });
  }
}
