import 'dart:async';

import 'package:weather_app/models/exceptions.dart';
import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/data_error.dart';
import 'package:weather_app/models/either.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;
  final WeatherDBService _dbService;
  DateTime _lastRemoteFetch = DateTime.fromMillisecondsSinceEpoch(0);
  String? _previousCityId;

  WeatherRepository({apiService, dbService})
      : _apiService = apiService,
        _dbService = dbService;

  Future<Either<DataError, Weather>> getWeatherByCityId(String cityId, {bool remote = false}) =>
      (!_checkDataValidity() || cityId != _previousCityId || remote)
          ? _getRemoteWeatherByCityId(cityId)
          : _getLocalWeather();

  Future<Either<DataError, Weather>> _getRemoteWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then<Either<DataError, Weather>>((value) {
        _previousCityId = cityId;
        final currentWeather = value.toEntity();
        _dbService.insertWeather(currentWeather);
        _lastRemoteFetch = DateTime.now();
        return Right(currentWeather);
      }).catchError((e) {
        _lastRemoteFetch = DateTime.fromMillisecondsSinceEpoch(0);
        return Left<DataError, Weather>(e.toDataError());
      });

  Future<Either<DataError, Weather>> _getLocalWeather() =>
      _dbService.getWeatherByCityId(_previousCityId!).then((value) =>
          value == null ? (_getRemoteWeatherByCityId(_previousCityId!) as Either<DataError, Weather>) : Right(value));

  bool _checkDataValidity() => DateTime.now().difference(_lastRemoteFetch).inSeconds < 15 ? true : false;
}

extension _WeatherRespToEntityExtension on WeatherResp {
  Weather toEntity() {
    String iconPath = weather[0].iconPath;
    String description = weather[0].description;

    DateTime sunrise = sys.sunrise.add(Duration(seconds: timezoneInSeconds));
    DateTime sunset = sys.sunset.add(Duration(seconds: timezoneInSeconds));

    return Weather(
      lastRemoteFetch: DateTime.now(),
      temperature: main.temp,
      humidity: main.humidity,
      windSpeed: wind.speed,
      sunset: sunset,
      sunrise: sunrise,
      iconPath: iconPath,
      tempMax: main.tempMax,
      tempMin: main.tempMin,
      description: description,
      cityId: '$cityName, ${sys.countryId}',
    );
  }
}

extension _DynamicDataErrorExtension on dynamic {
  DataError toDataError() {
    switch (runtimeType) {
      case NoConnectionException:
        return const DataError.noConnection();
      case HttpStatusException:
        return DataError.httpStatus(message: toString());
      case DatabaseException:
        return DataError.db(message: toString());
      default:
        return DataError.generic(message: toString());
    }
  }
}
