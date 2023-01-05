import 'package:weather_app/domain/models/weather.dart';
import 'package:weather_app/domain/weather/weather_services.dart';
import 'package:weather_app/services/api_extensions.dart';
import 'package:weather_app/services/databases/weather_dao.dart';

class WeatherDBServiceImpl implements WeatherDBService {
  final WeatherDao _weatherDao;

  WeatherDBServiceImpl({required weatherDao}) : _weatherDao = weatherDao;

  @override
  Future<Weather?> getWeatherByCityId(String cityId) => _weatherDao.findWeatherByCityId(cityId).catchDbOperationsErrors();

  @override
  Future<void> insertWeather(Weather weather) => _weatherDao.insertWeather(weather);
}
