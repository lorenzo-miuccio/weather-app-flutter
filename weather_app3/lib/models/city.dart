import 'package:freezed_annotation/freezed_annotation.dart';
part 'city.freezed.dart';

// City model containing the city name and the country id (i.e. IT, US ...)
// to obtain a unique id of the city and handle homonym
@freezed
class City with _$City {

  const City._(); // to implement custom methods
  const factory City({required String cityName, required String countryId}) = _City;

  String get id => '$cityName,$countryId';
}