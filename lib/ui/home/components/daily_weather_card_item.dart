import 'package:flutter/material.dart';

import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show DailyWeatherItemModel;
import 'package:flutter_svg/svg.dart' show SvgPicture;

class DailyWeatherCardItem extends StatelessWidget {
  final DailyWeatherItemModel item;
  const DailyWeatherCardItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(item.icon, height: 26),
        const SizedBox(width: 8),
        Text(
          item.title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        Text(
          item.subtitle,
        ),
        const Spacer(),
      ],
    );
  }
}
