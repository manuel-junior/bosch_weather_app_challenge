import 'package:flutter/material.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show BandImage, DailyWeatherList;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text('Daily Weather'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: BandImage(),
        ),
      ),
      body: const DailyWeatherList(),
    );
  }
}
