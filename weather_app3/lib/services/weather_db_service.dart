import 'package:weather_app/databases/weather_dao.dart';
import 'package:weather_app/models/weather.dart';

class WeatherDBService {
  final WeatherDao _weatherDao;

  WeatherDBService({required weatherDao}):
      _weatherDao = weatherDao;

  Future<Weather> getWeatherByCityId(String cityId) => _weatherDao.findWeatherByCityId(cityId).then((value) => value ?? (throw Exception()));

  Future<void> insertWeather(Weather weather) => _weatherDao.insertWeather(weather);

}