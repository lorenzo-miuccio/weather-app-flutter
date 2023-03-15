import 'package:flutter/material.dart';

import '../exceptions/api_exceptions.dart';
import './all_weather_data.dart';
import '../models/city.dart';
import '../models/weather.dart';
import '../provider/cities.dart';
import '../services/api_request.dart';
import 'error_widgets/no_connection_error.dart';
import 'error_widgets/generic_error.dart';

class WeatherSection extends StatefulWidget {
  const WeatherSection({Key? key}) : super(key: key);

  @override
  State<WeatherSection> createState() => _WeatherSectionState();
}

class _WeatherSectionState extends State<WeatherSection> {
  Future<Weather>? _currentWeather;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didchange');
    CitiesChangeNotifier? citiesData = CitiesInheritedNotifier.of(context);
    City? selectedCity = citiesData?.selectedCity;

    if (selectedCity != null) {
      _currentWeather = callAPI(city: selectedCity);
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return FutureBuilder(
      future: _currentWeather,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasData) {
          return AllWeatherData(snapshot.data!);
        } else {
          var error = snapshot.error;

          if (error is ConnectionException) {
            return const NoConnectionWidget();
          } else {
            return const GenericErrorWidget();
          }
        }
      },
    );

  }
}
