import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather_repository.dart';
import 'package:weather_app/pages/weather_home/weather_home_page.dart';
import 'package:weather_app/pages/weather_home/widgets/error_widgets/generic_error.dart';
import 'package:weather_app/providers/events/weather_events.dart';
import 'package:weather_app/providers/selected_city_cubit.dart';
import 'package:weather_app/providers/weather_bloc.dart';

class WeatherHomePageConnector extends StatelessWidget {
  const WeatherHomePageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SelectedCityCubit.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<SelectedCityCubit>(create: (_) => snapshot.data!),
              BlocProvider<WeatherBloc>(
                create: (ctx) => WeatherBloc(
                  weatherRepository: context.read<WeatherRepository>(),
                )..add(WeatherFetchReq(ctx.read<SelectedCityCubit>().state.id)),
              ),
            ],
            child: const WeatherHomePage(),
          );
        } else if (snapshot.hasError) {
          return const GenericErrorWidget();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
