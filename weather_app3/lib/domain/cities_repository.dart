import 'package:weather_app/models/city.dart';

class CitiesRepository {

  static const List<City> cities = [
    City(cityName: 'Roma', countryId: 'IT'),
    City(cityName: 'New York', countryId: 'US'),
    City(cityName: 'Bologna', countryId: 'IT'),
    City(cityName: 'Montreal', countryId: 'CA'),
    City(cityName: 'Milano', countryId: 'IT'),
    City(cityName: 'Messina', countryId: 'IT'),
  ];
}