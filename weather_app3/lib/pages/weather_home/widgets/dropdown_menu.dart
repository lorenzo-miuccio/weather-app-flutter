import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/providers/events/weather_events.dart';
import 'package:weather_app/providers/selected_city_cubit.dart';
import 'package:weather_app/providers/weather_bloc.dart';
import 'package:weather_app/services/shared_preferences_service.dart';

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
                  .map(
                    (city) => DropdownMenuItem<City>(
                      value: city,
                      enabled: selectedCity != city,
                      child: Text(
                        city.translatedCityName,
                        style: TextStyle(color: selectedCity != city ? Colors.black : Colors.grey),
                      ),
                    ),
                  )
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
