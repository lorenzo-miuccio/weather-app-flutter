import 'package:flutter/material.dart';
import 'package:weather_app/services/shared_preferences_service.dart';
import '../models/city.dart';
import '../provider/city_weather_notifier.dart';

class DropdownMenu extends StatelessWidget {

  final void Function() refreshDataCallback;

  const DropdownMenu({required this.refreshDataCallback, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CityWeatherNotifier? cityWeatherNotifier = CityWeatherNotifier.of(context);

    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<City>(
            alignment: AlignmentDirectional.topCenter,
            style: Theme.of(context).textTheme.headline1,
            value: cityWeatherNotifier.selectedCity,
            items: CityWeatherNotifier.citiesList
                .map((city) => DropdownMenuItem<City>(
                      value: city,
                      enabled: cityWeatherNotifier.selectedCity != city,
                      child: Text(
                        city.cityName,
                        style: TextStyle(
                            color: cityWeatherNotifier.selectedCity != city
                                ? Colors.black
                                : Colors.grey),
                      ),
                    ))
                .toList(),
            onChanged: (value) async {
                cityWeatherNotifier.selectedCity = value!;
                refreshDataCallback();
                await SharedPreferencesService.updatePreferredCityId(value.id);
            }),
      ),
    );
  }
}
