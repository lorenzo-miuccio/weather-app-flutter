import 'package:flutter/material.dart';
import 'package:weather_app/provider/weather_fetch_state.dart';
import 'package:weather_app/services/shared_preferences_service.dart';
import '../models/city.dart';

// Class that contains the cities available in the app and the selected city for which the weather will be displayed
class CityWeatherNotifier with ChangeNotifier {
  static const List<City> citiesList = [
    City(cityName: 'Roma', countryId: 'IT'),
    City(cityName: 'New York', countryId: 'US'),
    City(cityName: 'Bologna', countryId: 'IT'),
    City(cityName: 'Montreal', countryId: 'CA'),
    City(cityName: 'Milano', countryId: 'IT'),
    City(cityName: 'Messina', countryId: 'IT'),
  ];

  WeatherFetchState? _fetchState; // property used to change the widget state that displays the weather report according to it

  City selectedCity;

  CityWeatherNotifier._(this.selectedCity);

  // async method used to get a new instance of the class waiting for retrieving the last selected city before
  // the app was shut
  static Future<CityWeatherNotifier> getInstance() async {

    final String preferredCityId = await SharedPreferencesService.getPreferredCityId();

    City preferredCity =
        citiesList.firstWhere((city) => city.id == preferredCityId);

    return CityWeatherNotifier._(preferredCity);
  }

  WeatherFetchState? get fetchState =>
      _fetchState;

  void updateFetchState(WeatherFetchState newState) {
    _fetchState = newState;
    notifyListeners();
  }

  static CityWeatherNotifier of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<WeatherInheritedNotifier>()!.notifier!;
  }
}

class WeatherInheritedNotifier extends InheritedNotifier<CityWeatherNotifier> {
  const WeatherInheritedNotifier(
      {required super.notifier, required super.child, super.key});

}
