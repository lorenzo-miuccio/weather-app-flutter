import 'package:shared_preferences/shared_preferences.dart';

class CityKeyValueService {

  Future<void> updateSavedCityId(String cityId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('city', cityId);
  }

  Future<String> getSavedCityId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('city') ?? 'Rome, IT';
  }
}
