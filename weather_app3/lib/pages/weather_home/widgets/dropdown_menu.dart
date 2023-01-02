import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/states/weather_fetch_state.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/domain/cities_repository.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: BlocBuilder<WeatherCubit, WeatherFetchState>(
          buildWhen: (previousState, currentState) =>
              previousState.selectedCityId != currentState.selectedCityId,
          builder: (_, state) => DropdownButton<String>(
            alignment: AlignmentDirectional.topCenter,
            style: Theme.of(context).textTheme.headline1,
            value: state.selectedCityId,
            items: CitiesRepository.cities
                .map(
                  (city) => DropdownMenuItem<String>(
                    value: city.id,
                    enabled: state.selectedCityId != city.id,
                    child: Text(
                      city.translatedCityName,
                      style:
                          TextStyle(color: state.selectedCityId != city.id ? Colors.black : Colors.grey),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) async => context.read<WeatherCubit>().newSelectedCity(value!),
          ),
        ),
      ),
    );
  }
}
