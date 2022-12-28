/// Event being processed by [CounterBloc].
abstract class WeatherEvent {}

/// Notifies bloc to increment state.
class WeatherFetchRequested extends WeatherEvent {

  String cityId;

  WeatherFetchRequested(this.cityId);
}