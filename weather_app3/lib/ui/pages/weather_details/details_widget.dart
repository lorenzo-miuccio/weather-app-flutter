import 'package:domain/models/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';
import 'package:weather_app/ui/pages/common_widgets/error_widgets/generic_error.dart';
import 'package:weather_app/ui/pages/common_widgets/specific_weather_data_row.dart';
import 'package:weather_app/ui/pages/common_widgets/weather_image.dart';
import 'package:weather_app/ui/pages/weather_details/specific_weather_data.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherFetchState = BlocProvider.of<WeatherCubit>(context, listen: false).state;


    return weatherFetchState.maybeMap(hasData: (value) {
      final WeatherDetails details = value.currentWeather.toDetails();
      return Column(
        children: [
          Text(
            details.cityId,
            style: const TextStyle(fontSize: 32),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              WeatherImageWidget(iconPath: details.iconPath, imageHeight: 350),
              Text(
                details.description,
                style: const TextStyle(fontSize: 28, color: Colors.blueGrey),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SpecificWeatherDataRow([
            SpecificWeatherData(
                CupertinoIcons.thermometer_snowflake, '${details.tempMin.toStringAsFixed(1)} °C'),
            SpecificWeatherData(
                CupertinoIcons.thermometer_sun, '${details.tempMax.toStringAsFixed(1)} °C'),
          ])
        ],
      );
    }, orElse: () {
      return const GenericErrorWidget();
    });
  }
}
