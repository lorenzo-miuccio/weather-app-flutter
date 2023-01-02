// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorWeatherDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$WeatherDatabaseBuilder databaseBuilder(String name) =>
      _$WeatherDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$WeatherDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$WeatherDatabaseBuilder(null);
}

class _$WeatherDatabaseBuilder {
  _$WeatherDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$WeatherDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$WeatherDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<WeatherDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$WeatherDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$WeatherDatabase extends WeatherDatabase {
  _$WeatherDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  WeatherDao? _weatherDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Weather` (`cityId` TEXT NOT NULL, `iconPath` TEXT NOT NULL, `temperature` REAL NOT NULL, `windSpeed` REAL NOT NULL, `humidity` INTEGER NOT NULL, `sunrise` INTEGER NOT NULL, `sunset` INTEGER NOT NULL, `tempMin` REAL NOT NULL, `tempMax` REAL NOT NULL, `description` TEXT NOT NULL, PRIMARY KEY (`cityId`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  WeatherDao get weatherDao {
    return _weatherDaoInstance ??= _$WeatherDao(database, changeListener);
  }
}

class _$WeatherDao extends WeatherDao {
  _$WeatherDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _weatherInsertionAdapter = InsertionAdapter(
            database,
            'Weather',
            (Weather item) => <String, Object?>{
                  'cityId': item.cityId,
                  'iconPath': item.iconPath,
                  'temperature': item.temperature,
                  'windSpeed': item.windSpeed,
                  'humidity': item.humidity,
                  'sunrise': _dateTimeConverter.encode(item.sunrise),
                  'sunset': _dateTimeConverter.encode(item.sunset),
                  'tempMin': item.tempMin,
                  'tempMax': item.tempMax,
                  'description': item.description
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Weather> _weatherInsertionAdapter;

  @override
  Future<Weather?> findWeatherByCityId(String id) async {
    return _queryAdapter.query('SELECT * FROM Weather WHERE cityId = ?1',
        mapper: (Map<String, Object?> row) => Weather(
            tempMax: row['tempMax'] as double,
            description: row['description'] as String,
            temperature: row['temperature'] as double,
            humidity: row['humidity'] as int,
            windSpeed: row['windSpeed'] as double,
            sunrise: _dateTimeConverter.decode(row['sunrise'] as int),
            sunset: _dateTimeConverter.decode(row['sunset'] as int),
            iconPath: row['iconPath'] as String,
            tempMin: row['tempMin'] as double,
            cityId: row['cityId'] as String),
        arguments: [id]);
  }

  @override
  Future<List<Weather>> findAll() async {
    return _queryAdapter.queryList('SELECT * FROM Weather',
        mapper: (Map<String, Object?> row) => Weather(
            tempMax: row['tempMax'] as double,
            description: row['description'] as String,
            temperature: row['temperature'] as double,
            humidity: row['humidity'] as int,
            windSpeed: row['windSpeed'] as double,
            sunrise: _dateTimeConverter.decode(row['sunrise'] as int),
            sunset: _dateTimeConverter.decode(row['sunset'] as int),
            iconPath: row['iconPath'] as String,
            tempMin: row['tempMin'] as double,
            cityId: row['cityId'] as String));
  }

  @override
  Future<void> insertWeather(Weather weather) async {
    await _weatherInsertionAdapter.insert(weather, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
