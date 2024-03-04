import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bosch_weather_app_challenge/data/data.dart'
    show colorsProvider, weatherRepositoryProvider;

part 'provider.g.dart';

@riverpod
class AppStartup extends _$AppStartup {
  @override
  Future<void> build() async {
    debugPrint('App initialization');
    try {
      await Future.delayed(const Duration(seconds: 2));
      await ref.watch(colorsProvider.future);
      await ref.read(weatherRepositoryProvider).fetchWeather();
    } catch (e) {
      debugPrint('App initialization error: $e');

      rethrow;
    }
  }
}
