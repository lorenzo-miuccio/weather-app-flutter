// class containing all weather information used by the app to display the current weather

class WeatherEntity {
  final String iconPath;
  final double temperature;
  final double windSpeed;
  final int humidity;
  final DateTime sunrise;
  final DateTime sunset;

  WeatherEntity({
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
    required this.iconPath,
  });

}
