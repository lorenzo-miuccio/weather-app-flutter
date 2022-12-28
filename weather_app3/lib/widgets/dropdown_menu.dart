import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/provider/events/weather_events.dart';
import 'package:weather_app/provider/selected_city_cubit.dart';
import 'package:weather_app/provider/weather_bloc.dart';
import 'package:weather_app/services/shared_preferences_service.dart';
import '../models/city.dart';

class DropdownMenu extends StatelessWidget {

  const DropdownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: BlocBuilder<SelectedCityCubit, City>(
          builder: (_, selectedCity) => DropdownButton<City>(
              alignment: AlignmentDirectional.topCenter,
              style: Theme.of(context).textTheme.headline1,
              value: selectedCity,
              items: CitiesRepository.cities
                  .map((city) => DropdownMenuItem<City>(
                        value: city,
                        enabled: selectedCity != city,
                        child: Text(
                          city.cityName,
                          style: TextStyle(
                              color: selectedCity != city
                                  ? Colors.black
                                  : Colors.grey),
                        ),
                      ))
                  .toList(),
              onChanged: (value) async {
                  context.read<SelectedCityCubit>().setCity(value!);
                  BlocProvider.of<WeatherBloc>(context, listen: false).add(WeatherFetchRequested(value.id));
                  await SharedPreferencesService.updatePreferredCityId(value.id);
              }),
        ),
      ),
    );
  }
}
