import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_model.freezed.dart';

@freezed
class DailyModel with _$DailyModel {
  const factory DailyModel({
    required List<DateTime> time,
    required List<int> weatherCode,
    required List<double> temperature2MMax,
    required List<double> temperature2MMin,
    required List<DateTime> sunrise,
    required List<DateTime> sunset,
  }) = _DailyModel;

  factory DailyModel.fromJson(Map<String, dynamic> json) {
    List<T> parseList<T>(List<dynamic> list, T Function(dynamic) parser) {
      return list.map(parser).toList();
    }

    return DailyModel(
      time: parseList<DateTime>(
        json['time'],
        (e) => DateTime.parse(e.toString()),
      ),
      weatherCode: parseList<int>(
        json['weather_code'],
        (e) => int.parse(e.toString()),
      ),
      temperature2MMax: parseList<double>(
        json['temperature_2m_max'],
        (e) => double.parse(e.toString()),
      ),
      temperature2MMin: parseList<double>(
        json['temperature_2m_min'],
        (e) => double.parse(e.toString()),
      ),
      sunrise: parseList<DateTime>(
        json['sunrise'],
        (e) => DateTime.parse(e.toString()),
      ),
      sunset: parseList<DateTime>(
        json['sunset'],
        (e) => DateTime.parse(e.toString()),
      ),
    );
  }
}
