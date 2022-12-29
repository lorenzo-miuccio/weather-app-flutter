import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/services/weather_db_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;
  final WeatherDBService _dbService;

  WeatherRepository({apiService, dbService})
      : _apiService = apiService,
        _dbService = dbService;

  Future<Weather> getRemoteWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then((value) {
        final currentWeather = value.toEntity();
        _dbService.insertWeather(currentWeather);
        return currentWeather;
      });

  Future<Weather> getLocalWeatherByCityId(String cityId) =>
      _dbService.getWeatherByCityId(cityId);

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
      cityId: '$cityName,${sys.countryId}',
    );
  }
}
