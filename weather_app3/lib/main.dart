import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/cities_weather_page.dart';
import 'package:weather_app/provider/events/weather_events.dart';
import 'package:weather_app/provider/selected_city_cubit.dart';
import 'package:weather_app/provider/weather_bloc.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/widgets/error_widgets/generic_error.dart';

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

void main() {
  runApp(const MyApp(env: Env.prod));
}

class MyApp extends StatelessWidget {
  final Env env;

  const MyApp({required this.env, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final weatherApiService =
        env == Env.prod ? WeatherApiServiceImpl() : WeatherApiServiceMock();

    return RepositoryProvider<WeatherRepository>(
      create: (_) => WeatherRepository(weatherApiService),
      child: MaterialApp(
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
            future: SelectedCityCubit.getInstance(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider<SelectedCityCubit>(
                        create: (_) => snapshot.data!),
                    BlocProvider<WeatherBloc>(
                      create: (ctx) => WeatherBloc(
                        weatherRepository: context.read<WeatherRepository>(),
                      )..add(WeatherFetchRequested(ctx.read<SelectedCityCubit>().state.id)),
                    ),
                  ],
                  child: const CitiesWeatherPage(),
                );
              } else if (snapshot.hasError) {
                return const Scaffold(
                  body: GenericErrorWidget(),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          )),
    );
  }
}
