import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/models/city.dart';

class SelectedCityCubit extends Cubit<City> {
  final CitiesRepository _citiesRepo;

  static Future<SelectedCityCubit> getInstance({required CitiesRepository citiesRepository}) async {
    final String preferredCityId = await citiesRepository.getCityKeyValue();

    const citiesList = CitiesRepository.cities;

    City preferredCity = citiesList.firstWhere((city) => city.id == preferredCityId);

    return SelectedCityCubit._(preferredCity, citiesRepository);
  }

  SelectedCityCubit._(City selectedCity, CitiesRepository citiesRepo)
      : _citiesRepo = citiesRepo,
        super(selectedCity);

  void setCity(City newSelectedCity) =>
      _citiesRepo.updateCityKeyValue(newSelectedCity.id).then((_) => emit(newSelectedCity));
}
