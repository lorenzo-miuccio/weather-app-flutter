import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/events/weather_events.dart';
import 'package:weather_app/bloc/selected_city_cubit.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/pages/weather_home/widgets/dropdown_menu.dart';
import 'package:weather_app/pages/weather_home/widgets/weather_section.dart';

//Widget that displays whole page composed by the dropdown menu for city selection and weather report (WeatherSection)
class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WeatherBloc weatherBloc = context.read<WeatherBloc>();
    final String selectedCityId = context.watch<SelectedCityCubit>().state.id;

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async => weatherBloc.add(WeatherFetchReq(selectedCityId)),
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
                      Expanded(child: WeatherSection()),
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
