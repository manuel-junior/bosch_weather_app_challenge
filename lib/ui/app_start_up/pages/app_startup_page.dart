import 'package:bosch_weather_app_challenge/ui/app_start_up/provider.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show App, AppErrorWidget, AppLoadingWidget;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show AsyncValueX, ConsumerWidget, WidgetRef;

class AppStartup extends ConsumerWidget {
  const AppStartup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      data: (_) => const App(),
      loading: () => const AppLoadingWidget(),
      error: (e, st) => AppErrorWidget(
        message: e.toString(),
      ),
    );
  }
}
