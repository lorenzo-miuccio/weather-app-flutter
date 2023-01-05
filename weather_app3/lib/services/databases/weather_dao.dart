import 'package:floor/floor.dart';
import 'package:weather_app/domain/models/weather.dart';

@dao
abstract class WeatherDao {

  @Query('SELECT * FROM Weather WHERE cityId = :id')
  Future<Weather?> findWeatherByCityId(String id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertWeather(Weather weather);

  @Query('SELECT * FROM Weather')
  Future<List<Weather>> findAll();
}