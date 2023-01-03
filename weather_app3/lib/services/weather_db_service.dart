import 'package:weather_app/databases/weather_dao.dart';
import 'package:weather_app/models/weather.dart';

abstract class WeatherDBService {
  Future<Weather> getWeatherByCityId(String cityId);

  Future<void> insertWeather(Weather weather);
}


class WeatherDBServiceImpl implements WeatherDBService {
  final WeatherDao _weatherDao;

  WeatherDBServiceImpl({required weatherDao}) : _weatherDao = weatherDao;

  @override
  Future<Weather> getWeatherByCityId(String cityId) => _weatherDao
      .findWeatherByCityId(cityId)
      .then((value) => value ?? (throw Exception('Weather not found')));

  @override
  Future<void> insertWeather(Weather weather) => _weatherDao.insertWeather(weather);
}
