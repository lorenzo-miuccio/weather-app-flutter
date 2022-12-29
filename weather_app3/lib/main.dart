import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/databases/weather_dao.dart';
import 'package:weather_app/databases/weather_database.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_home/weather_home_page_connector.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/theme.dart';

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
  final weatherDao = weatherDB.weatherDao;
  runApp(MyApp(
    env: Env.prod,
    weatherDao: weatherDao,
  ));
}

class MyApp extends StatelessWidget {
  final Env env;
  final WeatherDao weatherDao;

  const MyApp({required this.env, required this.weatherDao, super.key});

  //Future<WeatherDatabase> _getDatabase() => $FloorWeatherDatabase.databaseBuilder('weather_database.db').build();

  @override
  Widget build(BuildContext context) {
    final weatherApiService = env == Env.prod ? WeatherApiServiceImpl() : WeatherApiServiceMock();

    return RepositoryProvider<WeatherRepository>(
      create: (_) => WeatherRepository(
        apiService: weatherApiService,
        weatherDao: weatherDao,
      ),
      child: MaterialApp(
        title: 'Skill Assessment',
        theme: appTheme,
        routes: {
          '/': (context) => const WeatherHomePageConnector(),
        },
        initialRoute: '/',
      ),
    );
  }
}
