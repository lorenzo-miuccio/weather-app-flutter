import 'package:floor/floor.dart';
import 'package:weather_app/models/weather.dart';

@dao
abstract class WeatherDao {

  @Query('SELECT * FROM Weather WHERE cityId = :id')
  Future<Weather?> findWeatherByCityId(String id);

  @insert
  Future<void> insertWeather(Weather weather);
}