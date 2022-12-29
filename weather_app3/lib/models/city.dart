// City model containing the city name and the country id (i.e. IT, US ...)
// to obtain a unique id of the city and handle homonym
class City {

  final String cityName;
  final String translatedCityName;
  final String countryId;

  const City({required this.cityName, required this.countryId, String? translatedName}):
    translatedCityName = translatedName ?? cityName;

  String get id => '$cityName,$countryId';
}