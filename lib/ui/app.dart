import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bosch_weather_app_challenge/data/data.dart'
    show colorsNotifierProvider;
import 'home/home.dart' show HomePage;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, widget) {
      final colors = ref.watch(colorsNotifierProvider).value;

      return MaterialApp(
        title: 'Weather App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            backgroundColor: colors!.background,
            titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displayMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          dividerColor: colors.divider,
          useMaterial3: false,
        ),
        home: const HomePage(),
      );
    });
  }
}
