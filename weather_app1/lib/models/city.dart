// City model containing the city name and the country id (i.e. IT, US ...)
// to obtain a unique id of the city and handle homonym
class City {
  final String _cityName, _countryId;
  final String _id;

  const City({required cityName, required countryId})
      : _cityName = cityName,
        _countryId = countryId,
        _id = cityName + ',' + countryId;

  String get countryId => _countryId;

  String get cityName => _cityName;

  String get id => _id;
}
