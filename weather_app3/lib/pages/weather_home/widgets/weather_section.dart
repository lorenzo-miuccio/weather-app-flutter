import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/weather_home/widgets/all_weather_data.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/no_connection_error.dart';
import 'package:weather_app/pages/weather_home/widgets/loading_widget.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';
import 'package:weather_app/providers/weather_bloc.dart';

class WeatherSection extends StatefulWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  State<WeatherSection> createState() => _WeatherSectionState();
}

class _WeatherSectionState extends State<WeatherSection> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<WeatherBloc, WeatherFetchState>(
      builder: (_, fetchState) {
        //_animationController.forward();
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
