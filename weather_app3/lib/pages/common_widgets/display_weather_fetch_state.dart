import 'package:flutter/material.dart';
import 'package:weather_app/pages/common_widgets/error_widgets/generic_error.dart';
import 'package:weather_app/pages/common_widgets/error_widgets/no_connection_error.dart';
import 'package:weather_app/pages/weather_details/details_widget.dart';
import 'package:weather_app/pages/weather_home/widgets/all_weather_data.dart';
import 'package:weather_app/pages/weather_home/widgets/loading_widget.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';

enum PageName {
  home,
  details,
}


class DisplayWeatherFetch extends StatelessWidget {
  final WeatherFetchState fetchState;
  final PageName page;

  const DisplayWeatherFetch({Key? key, required this.fetchState, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 350),
      child: fetchState.when(
            (currentWeather) => page == PageName.home? const AllWeatherData() : const DetailsWidget(),
        loading: () => const LoadingWidget(),
        error: (String? message) => const GenericErrorWidget(),
        noConnectionError: (String? message) => const NoConnectionWidget(),
      ),
    );;
  }
}
