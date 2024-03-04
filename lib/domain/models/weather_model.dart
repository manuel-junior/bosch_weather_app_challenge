import 'package:bosch_weather_app_challenge/domain/models/daily_model.dart';
import 'package:bosch_weather_app_challenge/domain/models/daily_units_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required double latitude,
    required double longitude,
    required double generationtimeMs,
    required int utcOffsetSeconds,
    required String timezone,
    required String timezoneAbbreviation,
    required double elevation,
    required DailyUnitsModel dailyUnits,
    required DailyModel daily,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      latitude: json['latitude'],
      longitude: json['longitude'],
      generationtimeMs: json['generationtime_ms'],
      utcOffsetSeconds: json['utc_offset_seconds'],
      timezone: json['timezone'],
      timezoneAbbreviation: json['timezone_abbreviation'],
      elevation: json['elevation'],
      dailyUnits: DailyUnitsModel.fromJson(json['daily_units']),
      daily: DailyModel.fromJson(json['daily']),
    );
  }
}
