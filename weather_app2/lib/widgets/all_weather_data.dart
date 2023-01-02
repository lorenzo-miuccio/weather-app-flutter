import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/models/specific_weather_data.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/provider/city_weather_notifier.dart';
import 'package:weather_app/provider/weather_fetch_state.dart';
import 'package:weather_app/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/widgets/specific_weather_data_row.dart';

class AllWeatherData extends StatefulWidget {
  const AllWeatherData({Key? key}) : super(key: key);

  @override
  State<AllWeatherData> createState() => _AllWeatherDataState();
}

class _AllWeatherDataState extends State<AllWeatherData>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 350),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    WeatherFetchState? fetchState = CityWeatherNotifier.of(context).fetchState;

    Weather? currentWeather;

    if(fetchState != null) {
      fetchState.maybeWhen((value) => currentWeather = value,
          orElse: () => currentWeather = null);
    }

    if(currentWeather == null) {
      return const GenericErrorWidget();
    }

    final List<SpecificWeatherData> sunDataList = [
      SpecificWeatherData(CupertinoIcons.sunrise,
          '${currentWeather!.sunrise.hour}:${currentWeather!.sunrise.minute.toString().padLeft(2, '0')}'),
      SpecificWeatherData(CupertinoIcons.sunset_fill,
          '${currentWeather!.sunset.hour}:${currentWeather!.sunset.minute..toString().padLeft(2, '0')}')
    ];

    final List<SpecificWeatherData> otherWeatherDataList = [
      SpecificWeatherData(CupertinoIcons.wind,
          '${currentWeather!.windSpeed.toStringAsFixed(2)} km/h'),
      SpecificWeatherData(CupertinoIcons.drop, '${currentWeather!.humidity}%')
    ];

    final List<List<SpecificWeatherData>> allSpecificWeatherData = [
      sunDataList,
      otherWeatherDataList
    ];

    _animationController.forward();

    return FadeTransition(
      opacity: _animation,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 280,
              child: FadeInImage(
                fadeInDuration: const Duration(milliseconds: 100),
                placeholder:
                    const AssetImage('assets/images/placeholder_image.png'),
                image: NetworkImage(currentWeather!.iconPath),
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              '${currentWeather!.temperature.toStringAsFixed(1)} °C',
              style: const TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ...allSpecificWeatherData
                .map((dataRow) => SpecificWeatherDataRow(dataRow))
          ],
        ),
      ),
    );
  }
}
