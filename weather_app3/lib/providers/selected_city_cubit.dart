import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/cities_repository.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/services/shared_preferences_service.dart';

class SelectedCityCubit extends Cubit<City> {

  static Future<SelectedCityCubit> getInstance() async {

    final String preferredCityId = await SharedPreferencesService.getPreferredCityId();

    const citiesList = CitiesRepository.cities;

    City preferredCity =
    citiesList.firstWhere((city) => city.id == preferredCityId);

    return SelectedCityCubit._(preferredCity);
  }

  SelectedCityCubit._(City selectedCity): super(selectedCity);

  /// Toggles the current brightness between light and dark.
  void setCity(City newSelectedCity) {
    emit(newSelectedCity);
  }
}