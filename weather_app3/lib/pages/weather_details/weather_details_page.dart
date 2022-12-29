import 'package:flutter/material.dart';

class WeatherDetailsPage extends StatelessWidget {
  static const String routeName = '/details';

  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headline2,
          title: const Text(
            'Weather Details',
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 150,
        ),
        body: Container(),
      ),
    );
  }
}
