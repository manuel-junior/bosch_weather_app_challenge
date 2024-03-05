import 'package:bosch_weather_app_challenge/domain/models/weather_conditions_model.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show DailyWeatherItemModel, DailyWeatherModel, HomePageContentNotifier;
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import 'package:bosch_weather_app_challenge/domain/domain.dart';
import 'package:bosch_weather_app_challenge/ui/home/home.dart';

final mockedHomePageData = List.generate(
  5,
  (index) => DailyWeatherModel(
    uvIndexMax: index,
    date: DateTime.now(),
    low: DailyWeatherItemModel("assets/icons/sun.svg", "", ""),
    hight: DailyWeatherItemModel("assets/icons/sun.svg", "", ""),
    sunset: DailyWeatherItemModel("assets/icons/sun.svg", "", ""),
    sunrise: DailyWeatherItemModel("assets/icons/sun.svg", "", ""),
    weatherCondition: const WeatherConditionModel(
      code: 1,
      descriptionDay: '',
      descriptionNight: '',
      icon: 'assets/icons/sun.svg',
    ),
  ),
);

class MockHomePageContentNotifier
    extends AutoDisposeNotifier<List<DailyWeatherModel>>
    with Mock
    implements HomePageContentNotifier {
  // ignore: avoid_public_notifier_properties
  final List<DailyWeatherModel> data;

  MockHomePageContentNotifier({required this.data});
  // ignore: avoid_public_notifier_properties
  @override
  late List<DailyWeatherModel> state;

  @override
  List<DailyWeatherModel> build() {
    return data;
  }

  @override
  Future<void> loadWeatherData() async {
    state = data;
  }

  // ignore: avoid_public_notifier_properties
  @override
  AutoDisposeNotifierProviderRef<List<DailyWeatherModel>> get ref =>
      throw UnimplementedError();

  // ignore: avoid_public_notifier_properties
  @override
  List<DailyWeatherModel>? get stateOrNull => throw UnimplementedError();

  @override
  bool updateShouldNotify(
      List<DailyWeatherModel> previous, List<DailyWeatherModel> next) {
    throw UnimplementedError();
  }
}
