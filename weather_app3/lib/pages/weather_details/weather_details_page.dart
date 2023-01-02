import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/states/weather_fetch_state.dart';
import 'package:weather_app/bloc/weather_details_cubit.dart';
import 'package:weather_app/pages/common_widgets/display_weather_fetch_state.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<WeatherDetailsCubit>().getWeatherDetails();
    return BlocBuilder<WeatherDetailsCubit, WeatherFetchState>(
      builder: (_, fetchState) =>
          DisplayWeatherFetch(fetchState: fetchState, page: PageName.details),
    );
  }
}
