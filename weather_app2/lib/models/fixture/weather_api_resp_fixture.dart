import 'dart:math';

import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:weather_app/models/api_response_entities/weather_api_resp.dart';
import 'package:weather_app/models/fixture/main_weather_fixture.dart';
import 'package:weather_app/models/fixture/suntimes_fixture.dart';
import 'package:weather_app/models/fixture/weather_description_fixture.dart';
import 'package:weather_app/models/fixture/wind_entity_fixture.dart';

extension WeatherFixture on WeatherApiResp {
  static _WeatherApiRespFixtureFactory factory() => _WeatherApiRespFixtureFactory();
}

class _WeatherApiRespFixtureFactory extends JsonFixtureFactory<WeatherApiResp> {
  @override
  FixtureDefinition<WeatherApiResp> definition() => define(
        (faker) => WeatherApiResp(
          weather: WeatherDescriptionEntityFixture.factory().makeMany(1),
          main: MainWeatherFixture.factory().makeSingle(),
          wind: WindEntityFixture.factory().makeSingle(),
          sunTimes: SunTimesEntityFixture.factory().makeSingle(),
          timezoneInSeconds: Random().nextInt(10000),
        ),
      );

  @override
  JsonFixtureDefinition<WeatherApiResp> jsonDefinition() => defineJson((object) => {
    'weather': object.weather.map((e) => WeatherDescriptionEntityFixture.factory().makeJsonObjectFromSingle(e)).toList(),
    'main': MainWeatherFixture.factory().makeJsonObjectFromSingle(object.main),
    'wind': WindEntityFixture.factory().makeJsonObjectFromSingle(object.wind),
    'sunTimes': SunTimesEntityFixture.factory().makeJsonObjectFromSingle(object.sunTimes),
    'timezone': object.timezoneInSeconds
  });
}