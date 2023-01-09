import 'package:domain/controller/weather_controller.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String selectedCityId = GetIt.instance.get<WeatherController>().getSelectedCityId();

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
            GetIt.instance.get<WeatherController>().newSelectedCity(value!);
            setState(() => selectedCityId = value);
          },
        ),
      ),
    );
  }
}
