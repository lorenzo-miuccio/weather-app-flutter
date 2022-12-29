import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_details.dart';
import 'package:weather_app/pages/weather_details/details_widget.dart';

class WeatherDetailsPage extends StatelessWidget {
  static const String routeName = '/details';

  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final WeatherDetails details = ModalRoute.of(context)!.settings.arguments as WeatherDetails;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headline1,
          title: const Text(
            'Weather Details',
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 150,
        ),
        body: DetailsWidget(details),
      ),
    );
  }
}
