import 'package:weather_app/models/city.dart';

class CitiesRepository {

  static const List<City> cities = [
    City(cityName: 'Rome', countryId: 'IT', translatedName: 'Roma'),
    City(cityName: 'New York', countryId: 'US'),
    City(cityName: 'Bologna', countryId: 'IT'),
    City(cityName: 'Montreal', countryId: 'CA'),
    City(cityName: 'Milan', countryId: 'IT', translatedName: 'Milano'),
    City(cityName: 'Messina', countryId: 'IT'),
  ];
}