import 'package:domain/controller/weather_controller.dart';
import 'package:domain/models/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';
import 'package:weather_app/ui/pages/common_widgets/error_widgets/generic_error.dart';
import 'package:weather_app/ui/pages/common_widgets/specific_weather_data_row.dart';
import 'package:weather_app/ui/pages/common_widgets/weather_image.dart';
import 'package:weather_app/ui/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/ui/specific_weather_data.dart';

class AllWeatherData extends StatelessWidget {
  const AllWeatherData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherFetchState = BlocProvider.of<WeatherCubit>(context, listen: false).state;

    return weatherFetchState.maybeMap(
        hasData: (value) {
          Weather currentWeather = value.currentWeather;
          final List<SpecificWeatherData> sunDataList = [
            SpecificWeatherData(
              CupertinoIcons.sunrise,
              '${currentWeather.sunrise.hour}:${currentWeather.sunrise.minute.toString().padLeft(2, '0')}',
            ),
            SpecificWeatherData(
              CupertinoIcons.sunset_fill,
              '${currentWeather.sunset.hour}:${currentWeather.sunset.minute..toString().padLeft(2, '0')}',
            )
          ];

          final List<SpecificWeatherData> otherWeatherDataList = [
            SpecificWeatherData(CupertinoIcons.wind, '${currentWeather.windSpeed.toStringAsFixed(2)} km/h'),
            SpecificWeatherData(CupertinoIcons.drop, '${currentWeather.humidity}%')
          ];

          final List<List<SpecificWeatherData>> allSpecificWeatherData = [sunDataList, otherWeatherDataList];

          return Column(
            children: [
              InkWell(
                onTap: () {
                  final controller = GetIt.instance.get<WeatherController>();
                  controller.refreshWeatherData(forceRemoteFetch: true);
                  Navigator.of(context)
                      .pushNamed(WeatherDetailsPage.routeName)
                      .then((value) => controller.refreshWeatherData());
                },
                child: WeatherImageWidget(
                  iconPath: currentWeather.iconPath,
                  imageHeight: 240,
                ),
              ),
              Text(
                '${currentWeather.temperature.toStringAsFixed(1)} °C',
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ...allSpecificWeatherData.map((dataRow) => SpecificWeatherDataRow(dataRow)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text('Last update: ${DateTime.now().difference(currentWeather.lastRemoteFetch).inSeconds} s',
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                    )),
              )
            ],
          );
        },
        orElse: () => const GenericErrorWidget());
  }
}
