// database.dart

import 'dart:async';

import 'package:domain/models/weather.dart';
import 'package:floor/floor.dart';
import 'package:service/databases/converter/datetime_converter.dart';
import 'package:service/databases/weather_dao.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

part 'weather_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Weather])
@TypeConverters([DateTimeConverter])
abstract class WeatherDatabase extends FloorDatabase {
  WeatherDao get weatherDao;
}
