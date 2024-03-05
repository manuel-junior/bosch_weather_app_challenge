import 'package:bosch_weather_app_challenge/domain/domain.dart' show formatTime;

class DailyWeatherItemModel {
  final String icon;
  final String title;
  final String subtitle;

  DailyWeatherItemModel(this.icon, this.title, this.subtitle);

  factory DailyWeatherItemModel.fromLow(double low, String format) =>
      DailyWeatherItemModel(
          "assets/icons/temperature-low.svg", "Low", "$low$format");
  factory DailyWeatherItemModel.fromHigh(double high, String format) =>
      DailyWeatherItemModel(
          "assets/icons/temperature-high.svg", "High", "$high$format");

  factory DailyWeatherItemModel.fromSunrise(DateTime date) =>
      DailyWeatherItemModel(
          "assets/icons/sun.svg", "Sunrise", formatTime(date));

  factory DailyWeatherItemModel.fromSunset(DateTime date) =>
      DailyWeatherItemModel(
          "assets/icons/moon.svg", "Sunset", formatTime(date));
}
