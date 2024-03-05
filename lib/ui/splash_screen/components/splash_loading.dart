import 'package:flutter/material.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart' show BaseSplash;

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseSplash(child: CircularProgressIndicator.adaptive());
  }
}
