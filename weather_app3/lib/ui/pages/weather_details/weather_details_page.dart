import 'package:flutter/material.dart';
import 'package:weather_app/ui/pages/common_widgets/display_weather_fetch_state.dart';

class WeatherDetailsPage extends StatelessWidget {

  static const String routeName = '/weather-details';

  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headline1,
          title: const Text('Details'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 150,
        ),
        body: const DisplayWeatherFetch(page: PageName.details),
      ),
    );
  }
}
