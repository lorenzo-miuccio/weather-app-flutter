import 'dart:math';

import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:weather_app/models/api_response_entities/main_weather_entity.dart';
import 'package:weather_app/models/api_response_entities/sun_times_entity.dart';
import 'package:weather_app/models/api_response_entities/weather_api_resp.dart';
import 'package:weather_app/models/api_response_entities/weather_description_entity.dart';
import 'package:weather_app/models/api_response_entities/wind_entity.dart';

extension WeatherFixture on WeatherApiResp {
  static _WeatherFixtureFactory factory() => _WeatherFixtureFactory();
}

class _WeatherFixtureFactory extends FixtureFactory<WeatherApiResp> {
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
}

extension MainWeatherFixture on MainWeatherEntity {
  static _MainWeatherFixtureFactory factory() => _MainWeatherFixtureFactory();
}

class _MainWeatherFixtureFactory extends FixtureFactory<MainWeatherEntity> {
  @override
  FixtureDefinition<MainWeatherEntity> definition() =>
      define((faker) => MainWeatherEntity(temp: Random().nextDouble() * 40, humidity: Random().nextInt(100)));
}

extension WindEntityFixture on WindEntity {
  static _WindEntityFixtureFactory factory() => _WindEntityFixtureFactory();
}

class _WindEntityFixtureFactory extends FixtureFactory<WindEntity> {
  @override
  FixtureDefinition<WindEntity> definition() => define((faker) => WindEntity(speed: Random().nextDouble() * 40));
}

extension WeatherDescriptionEntityFixture on WeatherDescriptionEntity {
  static _WeatherDescriptionEntityFixtureFactory factory() => _WeatherDescriptionEntityFixtureFactory();
}

class _WeatherDescriptionEntityFixtureFactory extends FixtureFactory<WeatherDescriptionEntity> {
  @override
  FixtureDefinition<WeatherDescriptionEntity> definition() =>
      define((faker) => WeatherDescriptionEntity(iconPath: faker.image.image(keywords: ['weather'], random: true)));
}

extension SunTimesEntityFixture on SunTimesEntity {
  static _SunTimesEntityFixtureFactory factory() => _SunTimesEntityFixtureFactory();
}

class _SunTimesEntityFixtureFactory extends FixtureFactory<SunTimesEntity> {
  @override
  FixtureDefinition<SunTimesEntity> definition() =>
      define((faker) => SunTimesEntity(sunrise: faker.date.dateTime(), sunset: faker.date.dateTime()));
}
