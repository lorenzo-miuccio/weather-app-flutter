import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';

import 'package:weather_app/provider/city_weather_notifier.dart';
import 'package:weather_app/provider/weather_fetch_state.dart';
import 'package:weather_app/widgets/dropdown_menu.dart';
import 'package:weather_app/widgets/weather_section.dart';

//Widget that displays whole page composed by the dropdown menu for city selection and weather report (WeatherSection)
class CitiesWeatherPage extends StatefulWidget {
  const CitiesWeatherPage({Key? key}) : super(key: key);

  @override
  State<CitiesWeatherPage> createState() => _CitiesWeatherPageState();
}

class _CitiesWeatherPageState extends State<CitiesWeatherPage> {


  Future<void> _refreshWeatherData() {
    final cityWeatherNotifier = CityWeatherNotifier.of(context);

    cityWeatherNotifier.updateFetchState(const WeatherFetchState.loading());
    final String cityId = cityWeatherNotifier.selectedCity.id;

    final weatherRepository = WeatherRepository.of(context);

    return weatherRepository.getWeatherByCityId(cityId).then((value) {
      cityWeatherNotifier
          .updateFetchState(WeatherFetchState(currentWeather: value));
    }).catchError((e) {
      if (e is ConnectionException) {
        cityWeatherNotifier
            .updateFetchState(const WeatherFetchState.noConnectionError());
      } else {
        cityWeatherNotifier.updateFetchState(const WeatherFetchState.error());
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    WeatherFetchState? weatherFetchState = CityWeatherNotifier.of(context).fetchState;
    if (weatherFetchState == null) {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => _refreshWeatherData()); // callback executed after first build
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: _refreshWeatherData, // call API
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 35),
                  child: Column(
                    children: [
                      DropdownMenu(
                        refreshDataCallback: _refreshWeatherData,
                      ),
                      const WeatherSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: _refreshWeatherData,
          child: const Icon(
            Icons.refresh,
            size: 30,
          ),
        ),
      ),
    );
  }
}
