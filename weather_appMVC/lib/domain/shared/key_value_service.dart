abstract class CityKeyValueService {
  Future<void> updateSavedCityId(String cityId);

  String getSavedCityId();
}