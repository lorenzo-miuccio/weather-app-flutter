import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/domain/cities_repository.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
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
