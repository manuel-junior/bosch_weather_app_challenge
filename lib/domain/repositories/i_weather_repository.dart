import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show WeatherModel;

abstract class IWeatherRepository {
  Future<WeatherModel> fetchWeather();
}
