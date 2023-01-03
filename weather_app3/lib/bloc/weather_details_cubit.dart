import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/states/weather_fetch_state.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';

class WeatherDetailsCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;

  WeatherDetailsCubit({required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        super(WeatherFetchState.loading(selectedCityId: weatherRepo.previousCityId!));

  void getWeatherDetails() {
    emit(WeatherFetchState.loading(selectedCityId: state.selectedCityId));
    _weatherRepo
        .getWeatherDetails()
        .then((value) => emit(
            WeatherFetchState.hasData(currentWeather: value, selectedCityId: state.selectedCityId)))
        .catchError((e) {
      if (e is ConnectionException) {
        emit(WeatherFetchState.noConnectionError(selectedCityId: state.selectedCityId));
      } else {
        emit(WeatherFetchState.error(selectedCityId: state.selectedCityId));
      }
    });
  }
}
