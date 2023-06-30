import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:weather_app/services/weather_api_service.dart';

import '../fixture/weather_api_resp_fixture.dart';
import 'weather_repository_test.mocks.dart';

@GenerateMocks([WeatherApiService])
void main() {
  late WeatherApiService service;

  late WeatherRepository repository;

  setUp(() {
    service = MockWeatherApiService();

    repository = WeatherRepository(service);
  });

  test('Get Weather By City successfully', () async {
    final weatherApiResp = WeatherApiFixture.factory().makeSingle();
    final cityId = faker.address.city();

    when(service.getWeatherByCityId(cityId)).thenAnswer((realInvocation) async => weatherApiResp);

    await repository.getWeatherByCityId(cityId);

    verify(service.getWeatherByCityId(cityId)).called(1);
  });

  test('Get Weather By City failed', () async {
    final cityId = faker.address.city();

    when(service.getWeatherByCityId(cityId)).thenThrow(ConnectionException());

    try {
      await repository.getWeatherByCityId(cityId);
      expect(true, isFalse, reason: 'connection lost');

    } catch (error) {
      expect(error, isInstanceOf<ConnectionException>());
    }

    verify(service.getWeatherByCityId(cityId)).called(1);
  });
}
