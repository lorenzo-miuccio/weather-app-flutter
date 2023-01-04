import 'dart:async';

import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/data_errors.dart';
import 'package:weather_app/models/either.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;
  final WeatherDBService _dbService;
  Timer? _fetchRemoteTimer;
  String? previousCityId;

  WeatherRepository({apiService, dbService})
      : _apiService = apiService,
        _dbService = dbService;

  Future<Either<DataError, Weather>> getWeatherByCityId(String cityId, {bool remote = false}) =>
      (_fetchRemoteTimer == null || cityId != previousCityId || remote) ? _getRemoteWeatherByCityId(cityId) : _getLocalWeatherByCityId(cityId);

  Future<Either<DataError, Weather>> _getRemoteWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then<Either<DataError, Weather>>((value) {
        previousCityId = cityId;
        final currentWeather = value.toEntity();
        _dbService.insertWeather(currentWeather);
        _restartTimer(cityId);
        return Right(currentWeather);
      }).catchError((e) {
        _fetchRemoteTimer?.cancel();
        _fetchRemoteTimer = null;
        return Left<DataError, Weather>(e.toDataError());
      });

  Future<Either<DataError, Weather>> _getLocalWeatherByCityId(String cityId) => _dbService.getWeatherByCityId(cityId).then<Either<DataError, Weather>>(
        (value) => value == null ? Left(const DataError.db()) : Right(value),
      );

  void _restartTimer(String cityId) {
    _fetchRemoteTimer?.cancel();
    _fetchRemoteTimer = Timer.periodic(const Duration(seconds: 30), (timer) => _getRemoteWeatherByCityId(cityId));
  }
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
        return const DataError.httpStatus();
      case Exception:
        return DataError.generic(message: (this as Exception).toString());
      default:
        return const DataError.generic();
    }
  }
}
