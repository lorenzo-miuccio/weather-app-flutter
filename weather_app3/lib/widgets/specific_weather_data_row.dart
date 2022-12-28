import 'package:flutter/material.dart';
import 'package:weather_app/widgets/specific_weather_data_element.dart';

import '../models/specific_weather_data.dart';

class SpecificWeatherDataRow extends StatelessWidget {
  final List<SpecificWeatherData> _weatherDataList;

  const SpecificWeatherDataRow(this._weatherDataList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _weatherDataList
            .map((weatherData) => SpecificWeatherDataElement(
                value: weatherData.value, icon: weatherData.iconSymbol))
            .toList(),
      ),
    );
  }
}