import 'dart:math';

import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/definitions/json_fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:data_fixture_dart/factories/json_fixture_factory.dart';
import 'package:weather_app/models/api_response_entities/main_weather_entity.dart';

extension MainWeatherFixture on MainWeatherEntity {
  static _MainWeatherFixtureFactory factory() => _MainWeatherFixtureFactory();
}

class _MainWeatherFixtureFactory extends JsonFixtureFactory<MainWeatherEntity> {
  @override
  FixtureDefinition<MainWeatherEntity> definition() =>
      define((faker) => MainWeatherEntity(temp: Random().nextDouble() * 40, humidity: Random().nextInt(100)));

  @override
  JsonFixtureDefinition<MainWeatherEntity> jsonDefinition() =>
      defineJson((object) => {'temp': object.temp, 'humidity': object.humidity});
}
