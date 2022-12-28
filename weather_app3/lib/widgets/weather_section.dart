import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/provider/states/weather_fetch_state.dart';
import 'package:weather_app/provider/weather_bloc.dart';
import 'package:weather_app/widgets/all_weather_data.dart';
import 'package:weather_app/widgets/loading_widget.dart';

import 'error_widgets/no_connection_error.dart';
import 'error_widgets/generic_error.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherFetchState>(
      builder: (_, fetchState) => fetchState.when(
        (currentWeather) => const AllWeatherData(),
        loading: () => const LoadingWidget(),
        error: (String? message) => const GenericErrorWidget(),
        noConnectionError: (String? message) => const NoConnectionWidget(),
      ),
    );
  }
}
