import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/definitions/json_fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:data_fixture_dart/factories/json_fixture_factory.dart';
import 'package:weather_app/models/api_response_entities/sun_times_entity.dart';

extension SunTimesEntityFixture on SunTimesEntity {
  static _SunTimesEntityFixtureFactory factory() => _SunTimesEntityFixtureFactory();
}

class _SunTimesEntityFixtureFactory extends JsonFixtureFactory<SunTimesEntity> {
  @override
  FixtureDefinition<SunTimesEntity> definition() =>
      define((faker) => SunTimesEntity(sunrise: faker.date.dateTime(), sunset: faker.date.dateTime()));

  @override
  JsonFixtureDefinition<SunTimesEntity> jsonDefinition() => defineJson(
      (object) => {'sunrise': object.sunrise.millisecondsSinceEpoch, 'sunset': object.sunset.millisecondsSinceEpoch});
}
