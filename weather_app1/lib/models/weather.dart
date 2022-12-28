
// class containing all weather information used by the app to display the current weather
class Weather {
  final String _iconPath;
  final double _temperature;
  final double _windSpeed;
  final int _humidity;
  final DateTime _currentTime;
  final DateTime _sunrise, _sunset;

  Weather({
    required temperature,
    required humidity,
    required windSpeed,
    required currentTime,
    required sunrise,
    required sunset,
    required iconPath,
  })  : _temperature = temperature,
        _humidity = humidity,
        _windSpeed = windSpeed,
        _currentTime = currentTime,
        _sunrise = sunrise,
        _sunset = sunset,
        _iconPath = iconPath;


  String get iconPath => _iconPath;

  // method used to retrieve a new instance from the response of the API call
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['main']['temp'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'] * 3.6, // in km/h
      currentTime:
          DateTime.now().toUtc().add(Duration(seconds: json['timezone'])),
      sunrise: DateTime.fromMillisecondsSinceEpoch(
              json['sys']['sunrise'] * 1000,
              isUtc: true)
          .add(
        Duration(seconds: json['timezone']),
      ),
      sunset: DateTime.fromMillisecondsSinceEpoch(json['sys']['sunset'] * 1000,
              isUtc: true)
          .add(
        Duration(seconds: json['timezone']),
      ),
      iconPath:
          'http://openweathermap.org/img/wn/${json['weather'][0]['icon']}@2x.png',
    );
  }

  double get temperature => _temperature;

  double get windSpeed => _windSpeed;

  int get humidity => _humidity;

  DateTime get currentTime => _currentTime;

  DateTime get sunrise => _sunrise;

  DateTime get sunset => _sunset;
}
