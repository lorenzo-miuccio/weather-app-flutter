import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/city.dart';

// Class that contains the cities available in the app and the selected city for which the weather will be displayed
class CitiesChangeNotifier with ChangeNotifier {
  static const List<City> citiesList = [
    City(cityName: 'Roma', countryId: 'IT'),
    City(cityName: 'New York', countryId: 'US'),
    City(cityName: 'Bologna', countryId: 'IT'),
    City(cityName: 'Montreal', countryId: 'CA'),
  ];

  City _selectedCity;

  CitiesChangeNotifier._(this._selectedCity);

  // async method used to retrieve a new instance of the class waiting for retrieving the last selected city before
  // the app was shut
  static Future<CitiesChangeNotifier> getInstance() async {

    final prefs = await SharedPreferences.getInstance();
    final String preferredCityId = prefs.getString('city') ?? 'Roma,IT';

    City preferredCity = citiesList.firstWhere((city) => city.id == preferredCityId);
    return CitiesChangeNotifier._(preferredCity);
  }

  City get selectedCity => _selectedCity;

  // method called to set the new selected city notifying the listening widget to rebuild
  // and update the key-value containing the last city selected
  set selectedCity(City value) {
    _selectedCity = value;

    _updatePreferences();
    notifyListeners();
  }

  Future<void> _updatePreferences() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('city', _selectedCity.id);
  }

  // method that notifies the listening widgets to rebuild when the the user request a weather update on the same selected city
  void rebuild() {
    notifyListeners();
  }
}

class CitiesInheritedNotifier extends InheritedNotifier<CitiesChangeNotifier> {

  const CitiesInheritedNotifier(
      {required super.notifier, required super.child, super.key});

  static CitiesChangeNotifier? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CitiesInheritedNotifier>()
        ?.notifier;
  }
}
