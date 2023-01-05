import 'package:domain/cities_repository.dart';
import 'package:domain/weather/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service/city_key_value_service.dart';
import 'package:service/databases/weather_database.dart';
import 'package:service/weather_api_service.dart';
import 'package:service/weather_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';
import 'package:weather_app/ui/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/ui/pages/weather_home/weather_home_page.dart';
import 'package:weather_app/ui/theme.dart';

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

  runApp(BlocProvider<WeatherCubit>(
    create: (_) => WeatherCubit(
      citiesRepo: CitiesRepository(keyValueService: keyValueService),
      weatherRepo: WeatherRepository(
        apiService: weatherApiService,
        dbService: weatherDBService,
      ),
    )..refreshWeatherData(),
    child: const MyApp(),
  ));
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
