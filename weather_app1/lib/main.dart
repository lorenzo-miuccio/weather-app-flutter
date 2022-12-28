import 'package:flutter/material.dart';
import 'package:weather_app/provider/cities.dart';
import 'package:weather_app/widgets/error_widgets/generic_error.dart';
import './pages/cities_weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Skill Assessment',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 14),
            bodyText2: TextStyle(fontSize: 14),
            headline1: TextStyle(fontSize: 40, color: Colors.black),
          ),
        ),
        home: FutureBuilder(
          future: CitiesChangeNotifier.getInstance(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CitiesInheritedNotifier(
                notifier: snapshot.data,
                child: const CitiesWeatherPage(),
              );
            } else if (snapshot.hasError) {
              return const Scaffold(
                body: Center(child: GenericErrorWidget()),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ));
  }
}
