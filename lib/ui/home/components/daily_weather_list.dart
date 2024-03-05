import 'package:flutter/material.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show DailyWeatherCard, homePageContentNotifierProvider;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DailyWeatherList extends ConsumerWidget {
  const DailyWeatherList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherContent = ref.watch(homePageContentNotifierProvider);
    return weatherContent.isNotEmpty
        ? ListView.separated(
            separatorBuilder: (_, index) => const Divider(thickness: 1.5),
            itemCount: weatherContent.length,
            itemBuilder: (_, index) {
              final weather = weatherContent[index];
              return DailyWeatherCard(weather: weather);
            },
          )
        : const Center(
            child: Text("No content available."),
          );
  }
}
