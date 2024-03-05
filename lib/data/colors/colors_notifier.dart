import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show ColorsModel;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'colors_notifier.g.dart';

@Riverpod(keepAlive: true)
class ColorsNotifier extends _$ColorsNotifier {
  @override
  ColorsModel build() => ColorsModel.fallback();

  Future<void> loadColors() async {
    debugPrint('Colors initialization');
    try {
      final data = await rootBundle.loadString("assets/colors.json");
      final jsonData = json.decode(data);
      state = ColorsModel.fromJson(jsonData);
    } catch (e) {
      debugPrint('Colors initialization error: $e');
      state = ColorsModel.fallback();
    }
  }
}
