import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show WeatherConditionModel;
import 'package:bosch_weather_app_challenge/ui/home/home.dart'
    show DailyWeatherItemModel;

class DailyWeatherModel {
  final DateTime date;
  final int uvIndexMax;
  final DailyWeatherItemModel low;
  final DailyWeatherItemModel hight;
  final DailyWeatherItemModel sunset;
  final DailyWeatherItemModel sunrise;
  final WeatherConditionModel weatherCondition;

  DailyWeatherModel({
    required this.uvIndexMax,
    required this.date,
    required this.low,
    required this.hight,
    required this.sunset,
    required this.sunrise,
    required this.weatherCondition,
  });
}
