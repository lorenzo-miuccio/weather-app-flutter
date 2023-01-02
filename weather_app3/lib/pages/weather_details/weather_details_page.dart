import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_details/details_widget.dart';

class WeatherDetailsPage extends StatelessWidget {
  static const String routeName = '/details';

  const WeatherDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String cityId = RepositoryProvider.of<WeatherRepository>(context).weatherDetails!.cityId;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headline1,
          title: Text(cityId),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 150,
        ),
        body: const DetailsWidget(),
      ),
    );
  }
}
