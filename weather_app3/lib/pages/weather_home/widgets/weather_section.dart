import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/common_widgets/display_weather_fetch_state.dart';
import 'package:weather_app/providers/states/weather_fetch_state.dart';
import 'package:weather_app/providers/weather_bloc.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherFetchState>(
      builder: (_, fetchState) => DisplayWeatherFetch(fetchState: fetchState, page: PageName.home),
    );
  }
}
