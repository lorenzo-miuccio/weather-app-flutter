import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/databases/weather_database.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/pages/weather_home/weather_home_page.dart';
import 'package:weather_app/services/shared_preferences_service.dart';
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

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final keyValueService = CityKeyValueServiceImpl(sharedPreferences: prefs);

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider<WeatherRepository>(
        create: (_) => WeatherRepository(
          apiService: weatherApiService,
          dbService: weatherDBService,
        ),
      ),
      RepositoryProvider<CitiesRepository>(
        create: (_) => CitiesRepository(keyValueService: keyValueService),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Future<WeatherDatabase> _getDatabase() => $FloorWeatherDatabase.databaseBuilder('weather_database.db').build();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (_) => WeatherCubit(
        citiesRepo: context.read<CitiesRepository>(),
        weatherRepo: context.read<WeatherRepository>(),
      )..refreshWeatherData(),child: MaterialApp(
        title: 'Skill Assessment',
        theme: appTheme,
        routes: {
          '/': (context) => const WeatherHomePage(),
          WeatherDetailsPage.routeName: (context) => const WeatherDetailsPage(),
        },
        //initialRoute: '/',
      ),
    );
  }
}
