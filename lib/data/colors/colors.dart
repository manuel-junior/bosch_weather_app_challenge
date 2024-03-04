import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:bosch_weather_app_challenge/domain/domain.dart'
    show ColorsModel;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'colors.g.dart';

@riverpod
class Colors extends _$Colors {
  @override
  Future<ColorsModel> build() async {
    debugPrint('Colors initialization');
    try {
      final data = await rootBundle.loadString("assets/colors.json");
      final jsonData = json.decode(data);
      return ColorsModel.fromJson(jsonData);
    } catch (e) {
      debugPrint('Colors initialization error: $e');
      return ColorsModel.fallback();
    }
  }
}
