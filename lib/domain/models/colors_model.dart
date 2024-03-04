import 'dart:ui';

import 'package:bosch_weather_app_challenge/domain/utils/hex_color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'colors_model.freezed.dart';

@freezed
class ColorsModel with _$ColorsModel {
  const factory ColorsModel({
    required Color status,
    required Color background,
    required Color divider,
  }) = _ColorsModel;

  factory ColorsModel.fromJson(Map<String, dynamic> json) {
    return ColorsModel(
      status: HexColor(json['status']),
      divider: HexColor(json['divider']),
      background: HexColor(json['background']),
    );
  }

  factory ColorsModel.fallback() {
    return const ColorsModel(
      status: Color.fromARGB(0, 255, 255, 255),
      divider: Color.fromARGB(0, 109, 108, 108),
      background: Color.fromARGB(0, 255, 255, 255),
    );
  }
}
