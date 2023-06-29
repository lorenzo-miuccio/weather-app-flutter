import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/models/api_response_entities/fixture/weather_api_resp_fixture.dart';
import 'package:weather_app/models/api_response_entities/weather_api_resp.dart';
import 'package:weather_app/pages/cities_weather_page.dart';
import 'package:weather_app/provider/city_weather_notifier.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/widgets/error_widgets/generic_error.dart';

void main() {
  runApp(const MyApp(env: Env.prod));
}

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

class MyApp extends StatelessWidget {
  final Env env;

  const MyApp({required this.env, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final weatherApiService = env == Env.prod ? WeatherApiServiceImpl() : WeatherApiServiceMock();

    print(WeatherFixture.factory().makeJsonObject());
    return MaterialApp(
      title: 'Skill Assessment',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 14),
          bodyText2: TextStyle(fontSize: 14),
          headline1: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
      home: FutureBuilder(
        future: CityWeatherNotifier.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return WeatherInheritedNotifier(
              notifier: snapshot.data,
              child: InheritedWeatherRepositoryWidget(
                value: WeatherRepository(weatherApiService),
                child: const CitiesWeatherPage(),
              ),
            );
          } else if (snapshot.hasError) {
            return const Scaffold(
              body: GenericErrorWidget(),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
