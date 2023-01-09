import 'package:domain/controller/weather_controller.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:domain/repositories/weather/weather_repository.dart';
import 'package:get_it/get_it.dart';


void registerWeatherController({required WeatherRepository weatherRepository, required CitiesRepository citiesRepository, required WeatherCubitInterface cubit}) {
  GetIt.I.registerSingleton<WeatherController>(WeatherController(
    citiesRepo: citiesRepository,
    weatherRepo: weatherRepository,
    cubit: cubit,
  )..refreshWeatherData());
}