import 'package:domain/cities_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/ui/bloc/weather_cubit.dart';

class CitySelectorMenu extends StatefulWidget {
  const CitySelectorMenu({Key? key}) : super(key: key);

  @override
  State<CitySelectorMenu> createState() => _CitySelectorMenuState();
}

class _CitySelectorMenuState extends State<CitySelectorMenu> {
  late WeatherCubit cubit;
  late String selectedCityId;

  @override
  void initState() {
    cubit = context.read<WeatherCubit>();
    selectedCityId = cubit.getSelectedCityId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          alignment: AlignmentDirectional.topCenter,
          style: Theme.of(context).textTheme.headline1,
          value: selectedCityId,
          items: CitiesRepository.cities
              .map(
                (city) => DropdownMenuItem<String>(
                  value: city.id,
                  enabled: selectedCityId != city.id,
                  child: Text(
                    city.translatedCityName,
                    style: TextStyle(color: selectedCityId != city.id ? Colors.black : Colors.grey),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            cubit.newSelectedCity(value!);
            setState(() => selectedCityId = value);
          },
        ),
      ),
    );
  }
}
