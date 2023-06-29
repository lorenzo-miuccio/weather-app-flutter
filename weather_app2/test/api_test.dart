import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:weather_app/models/api_response_entities/fixture/weather_api_resp_fixture.dart';
import 'package:weather_app/services/network/weather_api.dart';

void main() async {
  late Dio dio;
  late DioAdapter dioAdapter;

  group('weather', () {
    const baseUrl = BASE_URL;

    setUp(() {
      dio = Dio(BaseOptions(baseUrl: baseUrl));
      dioAdapter = DioAdapter(
        dio: dio,

        // [FullHttpRequestMatcher] is a default matcher class
        // (which actually means you haven't to pass it manually) that matches entire URL.
        //
        // Use [UrlRequestMatcher] for matching request based on the path of the URL.
        //
        // Or create your own http-request matcher via extending your class from  [HttpRequestMatcher].
        // See -> issue:[124] & pr:[125]
        matcher: const FullHttpRequestMatcher(),
      );
    });

    test('fetch weather data', () async {
      const fetchWeatherRoute = '/weather';

      // const weatherJson =
      //     '{"coord":{"lon":12.4839,"lat":41.8947},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"base":"stations","main":{"temp":29.19,"feels_like":30.45,"temp_min":27.53,"temp_max":30.71,"pressure":1013,"humidity":54},"visibility":10000,"wind":{"speed":3.09,"deg":260},"clouds":{"all":75},"dt":1688036508,"sys":{"type":2,"id":2037790,"country":"IT","sunrise":1688009842,"sunset":1688064556},"timezone":7200,"id":3169070,"name":"Rome","cod":200}';
      // final weather = jsonDecode(weatherJson);

      final Map<String, dynamic> weather = WeatherFixture.factory().makeJsonObject();

      print(weather);
      const query = <String, dynamic>{
        'q': 'roma, IT',
        'units': 'metric',
        'appid': API_KEY,
      };

      dioAdapter.onGet(
        fetchWeatherRoute,
        (server) => server.reply(200, weather),
        queryParameters: query,
      );

      final response = await dio.get(fetchWeatherRoute, queryParameters: query);

      expect(response.data, weather);
    });
  });
}
