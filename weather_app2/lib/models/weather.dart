// class containing all weather information used by the app to display the current weather

class Weather {
  final String iconPath;
  final double temperature;
  final double windSpeed;
  final int humidity;
  final DateTime sunrise;
  final DateTime sunset;

  Weather({
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
    required this.iconPath,
  });

}
