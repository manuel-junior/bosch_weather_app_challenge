import 'package:bosch_weather_app_challenge/data/data.dart';
import 'package:bosch_weather_app_challenge/domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

class MockColorsNotifier extends Notifier<ColorsModel>
    with Mock
    implements ColorsNotifier {
  // ignore: avoid_public_notifier_properties
  @override
  late ColorsModel state;

  @override
  ColorsModel build() => ColorsModel.fallback();

  @override
  bool updateShouldNotify(ColorsModel previous, ColorsModel next) {
    throw UnimplementedError();
  }

  @override
  Future<void> loadColors() async {
    state = ColorsModel.fallback();
  }
}
