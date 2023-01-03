import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_details_cubit.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_details/weather_details_page.dart';

class WeatherDetailsPageConnector extends StatelessWidget {
  const WeatherDetailsPageConnector({Key? key}) : super(key: key);
  static const String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherDetailsCubit>(
      create: (_) => WeatherDetailsCubit(weatherRepo: context.read<WeatherRepository>()),
      child: const WeatherDetailsPage(),
    );
  }
}