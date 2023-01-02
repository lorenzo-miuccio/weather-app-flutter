import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/weather_details/details_widget.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/no_connection_error.dart';
import 'package:weather_app/pages/weather_home/widgets/loading_widget.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';
import 'package:weather_app/providers/weather_details_cubit.dart';


class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    context.read<WeatherDetailsCubit>().getWeatherDetails();
    return BlocBuilder<WeatherDetailsCubit, WeatherFetchState>(
      builder: (_, fetchState) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: fetchState.when(
                (currentWeather) => const DetailsWidget(),
            loading: () => const LoadingWidget(),
            error: (String? message) => const GenericErrorWidget(),
            noConnectionError: (String? message) => const NoConnectionWidget(),
          ),
        );
      },
    );
  }
}
