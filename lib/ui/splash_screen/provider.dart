import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bosch_weather_app_challenge/data/data.dart'
    show colorsNotifierProvider;
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show homePageContentNotifierProvider;

part 'provider.g.dart';

class SplashNotifier extends _$SplashNotifier {
  @override
  FutureOr<void> build() async => await initialize();

  Future<void> initialize() async {
    debugPrint('App initialization');
    state = const AsyncLoading();
    try {
      await ref.watch(colorsNotifierProvider.notifier).loadColors();
      await ref
          .watch(homePageContentNotifierProvider.notifier)
          .loadWeatherData();
    } catch (e, s) {
      debugPrint('App initialization error: $e');
      if (e.toString().contains("ClientException with SocketException")) {
        throw Exception(
            'Something went wrong, make sure you\'re connected to the internet and try again.');
      }
      state = AsyncError(e, s);
    }
  }
}
