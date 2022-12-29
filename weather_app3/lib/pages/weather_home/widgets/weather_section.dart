import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/weather_home/widgets/all_weather_data.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/no_connection_error.dart';
import 'package:weather_app/pages/weather_home/widgets/loading_widget.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';
import 'package:weather_app/providers/weather_bloc.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<WeatherBloc, WeatherFetchState>(
      builder: (_, fetchState) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: fetchState.when(
            (currentWeather) => const AllWeatherData(),
            loading: () => const LoadingWidget(),
            error: (String? message) => const GenericErrorWidget(),
            noConnectionError: (String? message) => const NoConnectionWidget(),
          ),
        );
      },
    );
  }
}
