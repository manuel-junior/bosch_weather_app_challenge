import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_units_model.freezed.dart';

@freezed
class DailyUnitsModel with _$DailyUnitsModel {
  const factory DailyUnitsModel({
    required String time,
    required String weatherCode,
    required String temperature2MMax,
    required String temperature2MMin,
    required String sunrise,
    required String sunset,
  }) = _DailyUnitsModel;

  factory DailyUnitsModel.fromJson(Map<String, dynamic> json) {
    return DailyUnitsModel(
      time: json['time'],
      weatherCode: json['weather_code'],
      temperature2MMax: json['temperature_2m_max'],
      temperature2MMin: json['temperature_2m_min'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}
