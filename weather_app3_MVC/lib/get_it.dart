import 'package:domain/controller/weather_controller.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:domain/repositories/weather/weather_repository.dart';
import 'package:domain/repositories/weather/weather_services.dart';
import 'package:domain/shared/key_value_service.dart';
import 'package:get_it/get_it.dart';
import 'package:service/city_key_value_service.dart';
import 'package:service/databases/weather_database.dart';
import 'package:service/weather_api_service.dart';
import 'package:service/weather_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';

Future<void> registerDependencies() async {
  final get = GetIt.instance.get;

  final weatherDB = await $FloorWeatherDatabase.databaseBuilder('weather_database.db').build();
  final prefs = await SharedPreferences.getInstance();

  GetIt.instance
    ..registerLazySingleton<WeatherDBService>(() => WeatherDBServiceImpl(weatherDao: weatherDB.weatherDao))
    ..registerLazySingleton<WeatherApiService>(() => WeatherApiServiceImpl())
    ..registerLazySingleton<CityKeyValueService>(() => CityKeyValueServiceImpl(sharedPreferences: prefs))
    ..registerLazySingleton(() => WeatherRepository(apiService: get(), dbService: get()))
    ..registerLazySingleton(() => CitiesRepository(keyValueService: get()))
    ..registerLazySingleton<WeatherControllerListener>(() => WeatherCubit())
    ..registerLazySingleton(
        () => WeatherController(citiesRepo: get(), cubit: get(), weatherRepo: get())..refreshWeatherData());
}
