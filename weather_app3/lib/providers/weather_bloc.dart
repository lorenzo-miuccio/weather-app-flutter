import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/providers/events/weather_events.dart';

import 'states/weather_fetch_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherFetchState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(const WeatherFetchState.loading()) {

    on<WeatherFetchReq>((event, emit) async {
      emit(const WeatherFetchState.loading());
      await _weatherRepository
          .getWeatherByCityId(event.cityId)
          .then((value) => emit(WeatherFetchState(currentWeather: value)))
          .catchError((e) {
        if (e is ConnectionException) {
          emit(const WeatherFetchState.noConnectionError());
        } else {
          emit(const WeatherFetchState.error());
        }
      });
    });
  }
}
