import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_home/weather_home_page.dart';

class WeatherHomePageConnector extends StatelessWidget {
  const WeatherHomePageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (_) => WeatherCubit(
        citiesRepo: context.read<CitiesRepository>(),
        weatherRepo: context.read<WeatherRepository>(),
      )..refreshWeatherData(),
      child: const WeatherHomePage(),
    );
  }
}
