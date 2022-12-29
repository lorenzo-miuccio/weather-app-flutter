import 'package:weather_app/databases/weather_dao.dart';
import 'package:weather_app/models/api_response_entities/weather_resp.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_api_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;
  final WeatherDao _weatherDao;

  WeatherRepository({apiService, weatherDao})
      : _apiService = apiService,
        _weatherDao = weatherDao;

  Future<Weather> getRemoteWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then((value) {
        final currentWeather = value.toEntity();
        _weatherDao.insertWeather(currentWeather);
        return currentWeather;
      });


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
