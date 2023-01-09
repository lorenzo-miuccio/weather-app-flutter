import 'package:domain/controller/weather_controller.dart';
import 'package:domain/models/data_error.dart';
import 'package:domain/models/weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/ui/bloc/states/weather_fetch_state.dart';


class WeatherCubit extends Cubit<WeatherFetchState> implements WeatherCubitInterface  {
  WeatherCubit() : super(const WeatherFetchState.loading());

  @override
  void emitDataState(Weather weatherData) => emit(WeatherFetchState.hasData(currentWeather: weatherData));

  @override
  void emitErrorState(DataError error) => error.toWeatherFetchState();

  @override
  void emitLoadingState() => emit(const WeatherFetchState.loading());
}

extension _DataErrorToWeatherFetchStateExtension on DataError {
  WeatherFetchState toWeatherFetchState() => maybeMap(
    noConnection: (nc) => const WeatherFetchState.noConnectionError(),
    orElse: () => const WeatherFetchState.error(),
  );
}
