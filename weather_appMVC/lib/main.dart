import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/domain/controller/app_connector.dart';
import 'package:weather_app/databases/weather_database.dart';
import 'package:weather_app/domain/repositories/cities_repository.dart';
import 'package:weather_app/domain/weather/weather_repository.dart';
import 'package:weather_app/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/pages/weather_home/weather_home_page.dart';
import 'package:weather_app/services/city_key_value_service.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';
import 'package:weather_app/theme.dart';

import 'bloc/weather_cubit.dart';

enum Env {
  dev,
  prod;

  factory Env.fromArgs(String arg) {
    switch (arg) {
      case 'prod':
        return prod;
      default:
        return dev;
    }
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final weatherDB = await $FloorWeatherDatabase.databaseBuilder('weather_database.db').build();
  final weatherDBService = WeatherDBServiceImpl(weatherDao: weatherDB.weatherDao);

  final weatherApiService = WeatherApiServiceImpl();

  final prefs = await SharedPreferences.getInstance();
  final keyValueService = CityKeyValueServiceImpl(sharedPreferences: prefs);

  final weatherCubit = WeatherCubit();

  final weatherRepo = WeatherRepository(
    apiService: weatherApiService,
    dbService: weatherDBService,
  );

  final citiesRepo = CitiesRepository(keyValueService: keyValueService);

  registerWeatherController(weatherRepository: weatherRepo, citiesRepository: citiesRepo, cubit: weatherCubit);

  runApp(
    BlocProvider<WeatherCubit>(
      create: (_) => weatherCubit,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Assessment',
      theme: appTheme,
      routes: {
        '/': (context) => const WeatherHomePage(),
        WeatherDetailsPage.routeName: (context) => const WeatherDetailsPage(),
      },
      //initialRoute: '/',
    );
  }
}