import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bosch_weather_app_challenge/data/data.dart' show colorsProvider;
import 'home/home.dart' show HomePage;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, widget) {
      final colors = ref.watch(colorsProvider).value;

      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            background: colors!.background,
            seedColor: colors.background,
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      );
    });
  }
}
