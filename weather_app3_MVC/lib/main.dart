import 'package:domain/controller/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/get_it.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';
import 'package:weather_app/ui/pages/weather_details/weather_details_page.dart';
import 'package:weather_app/ui/pages/weather_home/weather_home_page.dart';
import 'package:weather_app/ui/theme.dart';

enum Env {
  dev,
  prod;

  factory Env.fromArgs(String arg) {
    switch (arg) {
      case 'prod':
        return prod;
      default:
        return dev;
    }
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await registerDependencies();
  runApp(
    BlocProvider<WeatherCubit>(
      create: (_) => GetIt.instance.get<WeatherControllerListener>() as WeatherCubit,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Assessment',
      theme: appTheme,
      routes: {
        '/': (context) => const WeatherHomePage(),
        WeatherDetailsPage.routeName: (context) => const WeatherDetailsPage(),
      },
      //initialRoute: '/',
    );
  }
}
