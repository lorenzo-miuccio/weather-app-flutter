import 'package:flutter/cupertino.dart';

// class used to describe a specific aspect of the weather (i.e. humidity, sunrise time ...)
class SpecificWeatherData {

  final IconData _iconSymbol; // icon that will be displayed next to the value
  final String _value;

  const SpecificWeatherData(this._iconSymbol, this._value);

  String get value => _value;

  IconData get iconSymbol => _iconSymbol;
}