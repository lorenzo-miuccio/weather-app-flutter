import 'package:flutter/material.dart';
import '../models/city.dart';
import '../provider/cities.dart';

class MyDropdownMenu extends StatefulWidget {
  const MyDropdownMenu({Key? key}) : super(key: key);

  @override
  State<MyDropdownMenu> createState() => _MyDropdownMenuState();
}

class _MyDropdownMenuState extends State<MyDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    CitiesChangeNotifier? citiesData = CitiesInheritedNotifier.of(context);

    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<City>(
            alignment: AlignmentDirectional.topCenter,
            style: Theme.of(context).textTheme.headline1,
            value: citiesData?.selectedCity,
            items: CitiesChangeNotifier.citiesList
                .map((city) => DropdownMenuItem<City>(
                      value: city,
                      enabled: citiesData?.selectedCity != city,
                      child: Text(
                        city.cityName,
                        style: TextStyle(
                            color: citiesData?.selectedCity != city
                                ? Colors.black
                                : Colors.grey),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                citiesData?.selectedCity = value!;
              });
            }),
      ),
    );
  }
}
