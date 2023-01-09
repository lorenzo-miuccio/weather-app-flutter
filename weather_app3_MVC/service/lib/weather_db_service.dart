

import 'package:domain/models/weather.dart';
import 'package:domain/repositories/weather/weather_services.dart';
import 'package:service/api_extensions.dart';
import 'package:service/databases/weather_dao.dart';

class WeatherDBServiceImpl implements WeatherDBService {
  final WeatherDao _weatherDao;

  WeatherDBServiceImpl({required weatherDao}) : _weatherDao = weatherDao;

  @override
  Future<Weather?> getWeatherByCityId(String cityId) => _weatherDao.findWeatherByCityId(cityId).catchDbOperationsErrors();

  @override
  Future<void> insertWeather(Weather weather) => _weatherDao.insertWeather(weather);
}
