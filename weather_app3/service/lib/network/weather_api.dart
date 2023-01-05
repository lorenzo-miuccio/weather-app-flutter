//ignore:

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:service/api_response_entities/weather_resp.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org")
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET("/data/2.5/weather")
  Future<WeatherResp> GETWeatherByCityId({
    @Query('q') required String cityId,
    @Query('units') String units = 'metric',
    @Query('appid') String apiKey = 'bb067dbc70fcc777779f5f394585b728',
  });
}
