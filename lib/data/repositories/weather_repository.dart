import 'package:flutter/material.dart';

import 'package:bosch_weather_app_challenge/data/data.dart' show HttpClient;
import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show HttpMethodEnums, IWeatherRepository, WeatherModel;

class WeatherRepository implements IWeatherRepository {
  final HttpClient client;

  WeatherRepository(this.client);

  @override
  Future<WeatherModel> fetchWeather() async {
    debugPrint('fetchWeather');
    try {
      const forecastURLPath =
          'forecast?latitude=40.89&longitude=-8.615&daily=uv_index_max,weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset&past_days=3&forecast_days=7';
      final response = await client.request(
        forecastURLPath,
        HttpMethodEnums.get,
      );
      if (response == null) {
        throw Exception('Failed to load data');
      }

      return WeatherModel.fromJson(response);
    } catch (e, s) {
      debugPrint('fetchWeather error: $e $s');
      rethrow;
    }
  }
}
