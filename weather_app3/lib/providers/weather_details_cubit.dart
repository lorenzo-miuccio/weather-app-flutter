import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';

class WeatherDetailsCubit extends Cubit<WeatherFetchState> {
  final WeatherRepository _weatherRepo;

  WeatherDetailsCubit({required WeatherRepository weatherRepo})
      : _weatherRepo = weatherRepo,
        super(const WeatherFetchState.loading());

  Future<void> getWeatherDetails() async {
    emit(const WeatherFetchState.loading());
    await _weatherRepo
        .getWeatherDetailsByCityId()
        .then((value) => emit(WeatherFetchState(currentWeather: value)))
        .catchError((e) {
      if (e is ConnectionException) {
        emit(const WeatherFetchState.noConnectionError());
      } else {
        emit(const WeatherFetchState.error());
      }
    });
  }
}
