import 'package:weather_app/models/api_response_entities/weather_api_response.dart';
import 'package:weather_app/models/weather_entity.dart';
import 'package:weather_app/services/weather_api_service.dart';

class WeatherRepository {
  final WeatherApiService _apiService;

  WeatherRepository(this._apiService);

  Future<WeatherEntity> getWeatherByCityId(String cityId) =>
      _apiService.getWeatherByCityId(cityId).then((value) => value.toEntity());
}

extension _WeatherApiResponseToEntityExtension on WeatherApiResponse {
  WeatherEntity toEntity() {
    String iconPath = weather[0].iconPath;
    String description = weather[0].description;

    DateTime sunrise =
        sys.sunrise.add(Duration(seconds: timezoneInSeconds));
    DateTime sunset = sys.sunset.add(Duration(seconds: timezoneInSeconds));

    return WeatherEntity(
      temperature: main.temp,
      humidity: main.humidity,
      windSpeed: wind.speed,
      sunset: sunset.millisecondsSinceEpoch,
      sunrise: sunrise.millisecondsSinceEpoch,
      iconPath: iconPath,
      tempMax: main.tempMax,
      tempMin: main.tempMin,
      description: description,
      cityId: '$cityName,${sys.countryId}',
    );
  }
}
