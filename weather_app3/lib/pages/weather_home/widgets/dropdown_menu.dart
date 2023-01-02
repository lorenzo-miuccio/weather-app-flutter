import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/states/weather_fetch_state.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/models/city.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: BlocBuilder<WeatherCubit, WeatherFetchState>(
          buildWhen: (previousState, currentState) =>
              previousState.selectedCity != currentState.selectedCity,
          builder: (_, state) => DropdownButton<City>(
            alignment: AlignmentDirectional.topCenter,
            style: Theme.of(context).textTheme.headline1,
            value: state.selectedCity,
            items: CitiesRepository.cities
                .map(
                  (city) => DropdownMenuItem<City>(
                    value: city,
                    enabled: state.selectedCity != city,
                    child: Text(
                      city.translatedCityName,
                      style:
                          TextStyle(color: state.selectedCity != city ? Colors.black : Colors.grey),
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
