// database.dart

// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:weather_app/databases/weather_dao.dart';
import 'package:weather_app/models/weather_entity.dart';

part 'weather_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [WeatherEntity])
abstract class WeatherDatabase extends FloorDatabase {
  WeatherDao get weatherDao;
}