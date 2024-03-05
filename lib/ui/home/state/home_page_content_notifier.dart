import 'package:bosch_weather_app_challenge/data/data.dart'
    show weatherRepositoryProvider;
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bosch_weather_app_challenge/ui/home/home.dart'
    show DailyWeatherItemModel, DailyWeatherModel;

part 'home_page_content_notifier.g.dart';

@riverpod
class HomePageContentNotifier extends _$HomePageContentNotifier {
  @override
  List<DailyWeatherModel> build() => [];

  Future<void> loadWeatherData() async {
    try {
      final weatherData =
          // ignore: avoid_manual_providers_as_generated_provider_dependency
          await ref.read(weatherRepositoryProvider).fetchWeather();
      final daily = weatherData.daily;
      final dailyUnits = weatherData.dailyUnits;

      int index = 0;
      final dailyWeathers = daily.time
          .map((time) {
            final weatherCondition =
                daily.weatherConditions.elementAtOrNull(index);
            final temperatureMax =
                daily.temperature2MMax.elementAtOrNull(index);
            final temperatureMin =
                daily.temperature2MMin.elementAtOrNull(index);
            final sunrise = daily.sunrise.elementAtOrNull(index);
            final sunset = daily.sunset.elementAtOrNull(index);
            final uvIndexMax = daily.uvIndexMax.elementAtOrNull(index);

            if (weatherCondition != null &&
                temperatureMax != null &&
                temperatureMin != null &&
                sunset != null &&
                uvIndexMax != null &&
                sunrise != null) {
              return DailyWeatherModel(
                date: time,
                uvIndexMax: uvIndexMax.toInt(),
                low: DailyWeatherItemModel.fromLow(
                    temperatureMin, dailyUnits.temperature2MMin),
                hight: DailyWeatherItemModel.fromHigh(
                    temperatureMax, dailyUnits.temperature2MMax),
                sunset: DailyWeatherItemModel.fromSunset(sunset),
                sunrise: DailyWeatherItemModel.fromSunrise(sunrise),
                weatherCondition: weatherCondition,
              );
            }
            index += 1;
          })
          .whereNotNull()
          .toList();

      // Order daily weather from most recent to the oldest
      dailyWeathers.sort((a, b) => b.date.compareTo(a.date));
      state = dailyWeathers;
    } catch (e, s) {
      debugPrint('loadWeatherData on error $e $s');
    }
  }
}
