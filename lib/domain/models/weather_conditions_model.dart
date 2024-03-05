import 'package:bosch_weather_app_challenge/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_conditions_model.freezed.dart';

@freezed
class WeatherConditionModel with _$WeatherConditionModel {
  const factory WeatherConditionModel({
    required int code,
    required String descriptionDay,
    required String descriptionNight,
    required String icon,
  }) = _WeatherConditionModel;

  factory WeatherConditionModel.fromCode(int code) {
    final map = getWeatherInfoFromCode(code);
    return WeatherConditionModel(
      code: code,
      descriptionDay: map["descriptionDay"],
      descriptionNight: map["descriptionNight"],
      icon: map["icon"],
    );
  }
}
