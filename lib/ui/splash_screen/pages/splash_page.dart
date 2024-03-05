import 'package:bosch_weather_app_challenge/domain/domain.dart';
import 'package:bosch_weather_app_challenge/ui/splash_screen/provider.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show App, SplashError, SplashLoading;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show AsyncValueX, ConsumerWidget, WidgetRef;

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashState = ref.watch(splashProvider);
    return splashState.when(
      data: (_) => const App(),
      loading: () => const SplashLoading(),
      error: (e, st) {
        final error = e as Exception;
        return SplashError(
          message: error.getMessage,
        );
      },
    );
  }
}
