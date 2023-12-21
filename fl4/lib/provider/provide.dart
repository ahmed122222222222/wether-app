import 'package:fl4/model/wmodell.dart';
import 'package:flutter/cupertino.dart';


class WeatherProvider extends ChangeNotifier {
  WeatherModel? _wef;

  String? cityName;
  set weatherData(WeatherModel? weather) {
    _wef = weather;
    notifyListeners();
  }

  WeatherModel? get weatherData => _wef;
}