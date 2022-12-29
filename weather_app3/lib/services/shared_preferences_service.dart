import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static Future<void> updatePreferredCityId(String cityId) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('city', cityId);
  }

  static Future<String> getPreferredCityId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('city') ?? 'Rome,IT';
  }
}
