class WeatherDetails {
  final double tempMin, tempMax;
  final String description;
  final String iconPath;

  const WeatherDetails(this.iconPath, {required this.tempMin, required this.tempMax, required this.description});
}
