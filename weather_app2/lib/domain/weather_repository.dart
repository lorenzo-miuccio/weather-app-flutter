import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/api_response_entities/weather_api_response.dart';
import 'package:weather_app/models/weather_entity.dart';
import 'package:weather_app/services/weather_api_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;

  WeatherRepository(this._apiService);

  Future<WeatherEntity> getWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then((value) => value.toEntity());

  static WeatherRepository of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<InheritedWeatherRepositoryWidget>()!
      ._value;
}

class InheritedWeatherRepositoryWidget extends InheritedWidget {
  final WeatherRepository _value;

  const InheritedWeatherRepositoryWidget(
      {required WeatherRepository value, super.key, required super.child})
      : _value = value;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

extension _WeatherApiResponseToEntityExtension on WeatherApiResponse {
  WeatherEntity toEntity() {
    String iconPath = weather[0].iconPath;
    DateTime sunrise =
        sunTimes.sunrise.add(Duration(seconds: timezoneInSeconds));
    DateTime sunset = sunTimes.sunset.add(Duration(seconds: timezoneInSeconds));

    return WeatherEntity(
      temperature: main.temp,
      humidity: main.humidity,
      windSpeed: wind.speed,
      sunset: sunset,
      sunrise: sunrise,
      iconPath: iconPath,
    );
  }
}