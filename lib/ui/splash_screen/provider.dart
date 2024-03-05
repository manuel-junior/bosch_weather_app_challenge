import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bosch_weather_app_challenge/data/data.dart'
    show colorsNotifierProvider;
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show homePageContentNotifierProvider;

part 'provider.g.dart';

@riverpod
class Splash extends _$Splash {
  @override
  Future<void> build() async {
    debugPrint('App initialization');
    try {
      await ref.watch(colorsNotifierProvider.future);
      await ref
          .watch(homePageContentNotifierProvider.notifier)
          .loadWeatherData();
    } catch (e) {
      debugPrint('App initialization error: $e');
      if (e.toString().contains("ClientException with SocketException")) {
        throw Exception(
            'Something went wrong, make sure you\'re connected to the internet and try again.');
      }
      rethrow;
    }
  }
}
