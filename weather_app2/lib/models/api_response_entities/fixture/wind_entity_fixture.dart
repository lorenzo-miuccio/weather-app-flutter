import 'dart:math';

import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/definitions/json_fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:data_fixture_dart/factories/json_fixture_factory.dart';
import 'package:weather_app/models/api_response_entities/wind_entity.dart';

extension WindEntityFixture on WindEntity {
  static _WindEntityFixtureFactory factory() => _WindEntityFixtureFactory();
}

class _WindEntityFixtureFactory extends JsonFixtureFactory<WindEntity> {
  @override
  FixtureDefinition<WindEntity> definition() => define((faker) => WindEntity(speed: Random().nextDouble() * 40));

  @override
  JsonFixtureDefinition<WindEntity> jsonDefinition() => defineJson(
          (object) => {
            "speed": object.speed
          });
}