import 'dart:async';

import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/models/weather_details.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;
  final WeatherDBService _dbService;
  Timer? _fetchRemoteTimer;
  WeatherDetails? weatherDetails;

  WeatherRepository({apiService, dbService})
      : _apiService = apiService,
        _dbService = dbService;

  Future<Weather> getWeatherByCityId(String cityId) =>
      (_fetchRemoteTimer == null || cityId != weatherDetails?.cityId)
          ? _getRemoteWeatherByCityId(cityId)
          : _getLocalWeatherByCityId(cityId);

  Future<Weather> _getRemoteWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then((value) {
        _restartTimer(cityId);
        final currentWeather = value.toEntity();
        _dbService.insertWeather(currentWeather);
        weatherDetails = currentWeather.toDetails();
        return currentWeather;
      });

  Future<Weather> _getLocalWeatherByCityId(String cityId) => _dbService.getWeatherByCityId(cityId);

  void _restartTimer(String cityId) {
    _fetchRemoteTimer?.cancel();
    _fetchRemoteTimer =
        Timer.periodic(const Duration(seconds: 10), (timer) => _getRemoteWeatherByCityId(cityId));
  }
}

extension _WeatherRespToEntityExtension on WeatherResp {
  Weather toEntity() {
    String iconPath = weather[0].iconPath;
    String description = weather[0].description;

    DateTime sunrise = sys.sunrise.add(Duration(seconds: timezoneInSeconds));
    DateTime sunset = sys.sunset.add(Duration(seconds: timezoneInSeconds));

    return Weather(
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

extension _WeatherToDetails on Weather {
  WeatherDetails toDetails() => WeatherDetails(
        tempMin: tempMin,
        tempMax: tempMax,
        iconPath: iconPath,
        cityId: cityId,
        description: description,
      );
}
