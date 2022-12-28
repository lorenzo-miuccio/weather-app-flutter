import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

import '../models/weather.dart';
import '../exceptions/api_exceptions.dart';
import '../models/city.dart';

// Call to openweather API to retrieve the current weather of the selected city
Future<Weather> callAPI({required City city}) async {
  final url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
    'q': city.id,
    'units': 'metric',
    'appid': 'bb067dbc70fcc777779f5f394585b728'
  });

  final http.Response response = await http.get(url).timeout(const Duration(seconds: 5)).catchError((e) {
    throw ConnectionException(e.toString());
  });

  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);

    return Weather.fromJson(jsonResponse);
  } else {
    throw HttpStatusException('${response.statusCode}');
  }
}
