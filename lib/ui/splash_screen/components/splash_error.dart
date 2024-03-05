import 'package:bosch_weather_app_challenge/ui/ui.dart' show BaseSplash;
import 'package:flutter/material.dart';

class SplashError extends StatelessWidget {
  final String message;
  const SplashError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return BaseSplash(
      child: Text(
        message,
        textAlign: TextAlign.center,
      ),
    );
  }
}
