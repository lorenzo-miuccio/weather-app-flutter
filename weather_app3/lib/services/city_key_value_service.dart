import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/domain/shared/key_value_services.dart';


class CityKeyValueServiceImpl implements CityKeyValueService {
  final SharedPreferences _prefs;

  CityKeyValueServiceImpl({required SharedPreferences sharedPreferences}) : _prefs = sharedPreferences;

  @override
  Future<void> updateSavedCityId(String cityId) => _prefs.setString('city', cityId);

  @override
  String getSavedCityId() => _prefs.getString('city') ?? 'Rome, IT';
}
