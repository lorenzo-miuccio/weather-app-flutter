import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/definitions/json_fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:data_fixture_dart/factories/json_fixture_factory.dart';
import 'package:weather_app/models/api_response_entities/weather_description_entity.dart';

extension WeatherDescriptionEntityFixture on WeatherDescriptionEntity {
  static _WeatherDescriptionEntityFixtureFactory factory() => _WeatherDescriptionEntityFixtureFactory();
}

class _WeatherDescriptionEntityFixtureFactory extends JsonFixtureFactory<WeatherDescriptionEntity> {
  @override
  FixtureDefinition<WeatherDescriptionEntity> definition() =>
      define((faker) => WeatherDescriptionEntity(iconPath: faker.image.image(keywords: ['weather'], random: true)));

  @override
  JsonFixtureDefinition<WeatherDescriptionEntity> jsonDefinition() =>
      defineJson((object) => {'image': object.iconPath});
}
