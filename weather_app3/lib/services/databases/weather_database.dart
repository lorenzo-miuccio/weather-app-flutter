// database.dart

import 'dart:async';

import 'package:floor/floor.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:weather_app/domain/models/weather.dart';
import 'package:weather_app/services/databases/converter/datetime_converter.dart';
import 'package:weather_app/services/databases/weather_dao.dart';

part 'weather_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Weather])
@TypeConverters([DateTimeConverter])
abstract class WeatherDatabase extends FloorDatabase {
  WeatherDao get weatherDao;
}
