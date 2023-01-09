import 'package:flutter/cupertino.dart';

// class used to describe a specific aspect of the weather (i.e. humidity, sunrise time ...)
class SpecificWeatherData {

  final IconData iconSymbol; // icon that will be displayed next to the value
  final String value;

  const SpecificWeatherData(this.iconSymbol, this.value);

}