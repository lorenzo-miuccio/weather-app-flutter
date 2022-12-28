import 'package:floor/floor.dart';
import 'package:weather_app/models/weather_entity.dart';

@dao
abstract class WeatherDao {

  @Query('SELECT * FROM Weather WHERE cityId = :id')
  Future<WeatherEntity?> findWeatherByCityId(String id);

  @insert
  Future<void> insertWeather(WeatherEntity weather);
}