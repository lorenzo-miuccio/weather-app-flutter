import 'package:flutter_bloc/flutter_bloc.dart';

import 'states/weather_fetch_state.dart';

class WeatherCubit extends Cubit<WeatherFetchState> {
  WeatherCubit() : super(const WeatherFetchState.loading());

  void setFetchState(WeatherFetchState newState) => emit(newState);
}
