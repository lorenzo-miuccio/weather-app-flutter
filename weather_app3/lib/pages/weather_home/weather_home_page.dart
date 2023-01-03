import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/pages/common_widgets/display_weather_fetch_state.dart';
import 'package:weather_app/pages/weather_home/widgets/dropdown_menu.dart';

//Widget that displays whole page composed by the dropdown menu for city selection and weather report (WeatherSection)
class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WeatherCubit weatherCubit = context.read<WeatherCubit>();

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async => weatherCubit.refreshWeatherData(),
          // call API
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 35),
                  child: Column(
                    children: const [
                      DropdownMenu(),
                      Expanded(child: DisplayWeatherFetch(page: PageName.home)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
