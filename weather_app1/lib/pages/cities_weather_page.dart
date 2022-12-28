import 'package:flutter/material.dart';
import 'package:weather_app/provider/cities.dart';
import 'package:weather_app/widgets/dropdown_menu.dart';

import '../widgets/weather_section.dart';

class CitiesWeatherPage extends StatelessWidget {
  const CitiesWeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CitiesChangeNotifier? citiesData = CitiesInheritedNotifier.of(context);

    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async => citiesData?.rebuild(),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 35),
                  child: Column(
                    children: const [
                      DropdownMenu(),
                      WeatherSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.refresh,
            size: 30,
          ),
          onPressed: () => citiesData?.rebuild(),
        ),
      ),
    );
  }
}
