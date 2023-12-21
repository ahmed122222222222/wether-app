import 'package:bloc/bloc.dart';
import 'package:fl4/cuibt/weathercubit/weatherState.dart';
import 'package:fl4/model/wmodell.dart';
import 'package:fl4/services/w%20services.dart';

class wcubit extends Cubit<weatherstate> {
  wcubit(this.weather) : super(weatherin());
  WeatherService weather;
  String? cname;
  WeatherModel? weathermodel;
  void getweather(CityName) async {
    emit(weatherloading());
    try {
      weathermodel = await weather.getWeather(cityName: CityName);
      emit(weathersucess());
    } catch (e) {
      emit(weatherfailer());
    }
  }
}
