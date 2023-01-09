import 'package:domain/controller/weather_controller.dart';
import 'package:domain/repositories/cities_repository.dart';
import 'package:flutter/material.dart';


class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  late WeatherController weatherController;
  late String selectedCityId;

  @override
  void didChangeDependencies() {
    weatherController = WeatherController.instance;
    selectedCityId = weatherController.getSelectedCityId();
    super.didChangeDependencies();
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
            weatherController.newSelectedCity(value!);
            setState(() => selectedCityId = value);
          },
        ),
      ),
    );
  }
}
