import 'package:flutter/material.dart';
import 'package:bosch_weather_app_challenge/domain/domain.dart' show formatDate;
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show DailyWeatherCardItem, DailyWeatherModel;
import 'package:flutter_svg/svg.dart' show SvgPicture;

class DailyWeatherCard extends StatelessWidget {
  final DailyWeatherModel weather;
  const DailyWeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Text(
                formatDate(weather.date),
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  child: SvgPicture.asset(weather.weatherCondition.icon,
                      height: 28),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  weather.weatherCondition.descriptionDay,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                Text("UV ${weather.uvIndexMax}")
                              ],
                            ),
                            verticalSpace(25),
                            DailyWeatherCardItem(item: weather.hight),
                            verticalSpace(),
                            DailyWeatherCardItem(item: weather.low),
                            verticalSpace(),
                            DailyWeatherCardItem(item: weather.sunrise),
                            verticalSpace(),
                            DailyWeatherCardItem(item: weather.sunset),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/forward-right.svg',
                        height: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox verticalSpace([double? height]) => SizedBox(height: height ?? 4);
}
