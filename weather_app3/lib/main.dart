import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

void main() {
  runApp(const MyApp(env: Env.prod));
}

class MyApp extends StatelessWidget {
  final Env env;

  const MyApp({required this.env, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final weatherApiService = env == Env.prod ? WeatherApiServiceImpl() : WeatherApiServiceMock();

    return RepositoryProvider<WeatherRepository>(
      create: (_) => WeatherRepository(weatherApiService),
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