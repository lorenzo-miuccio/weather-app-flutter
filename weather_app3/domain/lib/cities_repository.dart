
import 'package:domain/models/city.dart';
import 'package:domain/shared/key_value_services.dart';

class CitiesRepository {

  final CityKeyValueService _keyValueService;

  CitiesRepository({required CityKeyValueService keyValueService}) : _keyValueService = keyValueService;

  static const List<City> cities = [
    City(cityName: 'Rome', countryId: 'IT', translatedName: 'Roma'),
    City(cityName: 'New York', countryId: 'US'),
    City(cityName: 'Bologna', countryId: 'IT'),
    City(cityName: 'Montreal', countryId: 'CA'),
    City(cityName: 'Milan', countryId: 'IT', translatedName: 'Milano'),
    City(cityName: 'Messina', countryId: 'IT'),
  ];

  Future<void> updateCityKeyValue(String cityId) => _keyValueService.updateSavedCityId(cityId);

  String getCityKeyValue() => _keyValueService.getSavedCityId();
}