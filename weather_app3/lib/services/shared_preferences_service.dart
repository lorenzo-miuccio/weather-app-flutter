import 'package:shared_preferences/shared_preferences.dart';

class CityKeyValueService {
  final SharedPreferences _prefs;

  CityKeyValueService({required SharedPreferences sharedPreferences}) : _prefs = sharedPreferences;

  Future<void> updateSavedCityId(String cityId) => _prefs.setString('city', cityId);

  String getSavedCityId() => _prefs.getString('city') ?? 'Rome, IT';
}
