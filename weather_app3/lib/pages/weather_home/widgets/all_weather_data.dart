import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/specific_weather_data.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/models/weather_details.dart';
import 'package:weather_app/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/pages/weather_home/widgets/specific_weather_data_row.dart';
import 'package:weather_app/pages/weather_home/widgets/weather_image.dart';
import 'package:weather_app/providers/weather_bloc.dart';

class AllWeatherData extends StatelessWidget {
  const AllWeatherData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherFetchState = BlocProvider.of<WeatherBloc>(context, listen: false).state;

    Weather? currentWeather;

    weatherFetchState.maybeWhen((value) => currentWeather = value,
        orElse: () => currentWeather = null);

    if (currentWeather == null) return const GenericErrorWidget();

    final List<SpecificWeatherData> sunDataList = [
      SpecificWeatherData(
        CupertinoIcons.sunrise,
        '${currentWeather!.sunrise.hour}:${currentWeather!.sunrise.minute.toString().padLeft(2, '0')}',
      ),
      SpecificWeatherData(
        CupertinoIcons.sunset_fill,
        '${currentWeather!.sunset.hour}:${currentWeather!.sunset.minute..toString().padLeft(2, '0')}',
      )
    ];

    final List<SpecificWeatherData> otherWeatherDataList = [
      SpecificWeatherData(
          CupertinoIcons.wind, '${currentWeather!.windSpeed.toStringAsFixed(2)} km/h'),
      SpecificWeatherData(CupertinoIcons.drop, '${currentWeather!.humidity}%')
    ];

    final List<List<SpecificWeatherData>> allSpecificWeatherData = [
      sunDataList,
      otherWeatherDataList
    ];

    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.of(context).pushNamed(WeatherDetailsPage.routeName,
              arguments: WeatherDetails(
                currentWeather!.iconPath,
                tempMin: currentWeather!.tempMin,
                tempMax: currentWeather!.tempMax,
                description: currentWeather!.description,
              )),
          child: Hero(
            tag: 'weather_image',
            child: WeatherImageWidget(
              iconPath: currentWeather!.iconPath,
              imageHeight: 240,
            ),
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
        ...allSpecificWeatherData.map((dataRow) => SpecificWeatherDataRow(dataRow))
      ],
    );
  }
}
