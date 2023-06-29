//ignore:

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/api_response_entities/weather_api_resp.dart';

part 'weather_api.g.dart';

const BASE_URL = "https://api.openweathermap.org";
const API_KEY = 'bb067dbc70fcc777779f5f394585b728';

@RestApi(baseUrl: BASE_URL)
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET("/data/2.5/weather")
  Future<WeatherApiResp> GETWeatherByCityId({
    @Query('q') required String cityId,
    @Query('units') String units = 'metric',
    @Query('appid') String apiKey = API_KEY,
  });
}
