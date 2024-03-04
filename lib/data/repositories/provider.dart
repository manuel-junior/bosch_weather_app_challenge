import 'package:bosch_weather_app_challenge/data/data.dart'
    show HttpClient, WeatherRepository;
import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show IWeatherRepository;
import 'package:riverpod_annotation/riverpod_annotation.dart';

final weatherRepositoryProvider =
    Provider<IWeatherRepository>((ref) => WeatherRepository(HttpClient()));
