import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/databases/weather_database.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/pages/weather_home/weather_home_page_connector.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';
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
  final weatherDBService = WeatherDBService(weatherDao: weatherDB.weatherDao);
  runApp(MyApp(
    env: Env.prod,
    weatherDBService: weatherDBService,
  ));
}

class MyApp extends StatelessWidget {
  final Env env;
  final WeatherDBService weatherDBService;

  const MyApp({required this.env, required this.weatherDBService, super.key});

  //Future<WeatherDatabase> _getDatabase() => $FloorWeatherDatabase.databaseBuilder('weather_database.db').build();

  @override
  Widget build(BuildContext context) {
    final weatherApiService = env == Env.prod ? WeatherApiServiceImpl() : WeatherApiServiceMock();

    return RepositoryProvider<WeatherRepository>(
      create: (_) => WeatherRepository(
        apiService: weatherApiService,
        dbService: weatherDBService,
      ),
      child: MaterialApp(
        title: 'Skill Assessment',
        theme: appTheme,
        routes: {
          '/': (context) => const WeatherHomePageConnector(),
          WeatherDetailsPage.routeName: (context) => const WeatherDetailsPage(),
        },
        //initialRoute: '/',
      ),
    );
  }
}
