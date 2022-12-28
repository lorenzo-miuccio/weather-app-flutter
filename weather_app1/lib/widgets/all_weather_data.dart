import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/specific_weather_data_row.dart';
import '../models/specific_weather_data.dart';

import '../models/weather.dart';

class AllWeatherData extends StatefulWidget {
  final Weather _currentWeather;

  const AllWeatherData(this._currentWeather, {Key? key}) : super(key: key);

  @override
  State<AllWeatherData> createState() => _AllWeatherDataState();
}

class _AllWeatherDataState extends State<AllWeatherData> {

  double _widgetOpacity = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _widgetOpacity = 1;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    final List<SpecificWeatherData> sunDataList = [
      SpecificWeatherData(CupertinoIcons.sunrise,
          '${widget._currentWeather.sunrise.hour}:${widget._currentWeather.sunrise.minute}'),
      SpecificWeatherData(CupertinoIcons.sunset_fill,
          '${widget._currentWeather.sunset.hour}:${widget._currentWeather.sunset.minute}')
    ];

    final List<SpecificWeatherData> otherWeatherDataList = [
      SpecificWeatherData(CupertinoIcons.wind,
          '${widget._currentWeather.windSpeed.toStringAsFixed(2)} km/h'),
      SpecificWeatherData(CupertinoIcons.drop,
          '${widget._currentWeather.humidity}%')
    ];

    final List<List<SpecificWeatherData>> allSpecificWeatherData = [sunDataList, otherWeatherDataList];

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 400),
      opacity: _widgetOpacity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 280,
              child: Image.network(
                widget._currentWeather.iconPath,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              '${widget._currentWeather.temperature.toStringAsFixed(1)} °C',
              style: const TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ...allSpecificWeatherData.map((dataRow) => SpecificWeatherDataRow(dataRow))
          ],
        ),
      ),
    );
  }
}
