import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/models/specific_weather_data.dart';
import 'package:weather_app/models/weather_details.dart';
import 'package:weather_app/pages/weather_home/widgets/specific_weather_data_row.dart';
import 'package:weather_app/pages/weather_home/widgets/weather_image.dart';

class DetailsWidget extends StatelessWidget {

  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final WeatherDetails details = RepositoryProvider.of<WeatherRepository>(context).weatherDetails!;

    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Hero(
                tag: 'weather_image',
                child: WeatherImageWidget(iconPath: details.iconPath, imageHeight: 350)),
            Text(
              details.description,
              style: const TextStyle(fontSize: 28),
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
  }
}
