import 'package:bosch_weather_app_challenge/ui/splash_screen/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

class MockSplashNotifier extends AutoDisposeAsyncNotifier<void>
    with Mock
    implements SplashNotifier {
  // ignore: avoid_public_notifier_properties
  @override
  late AsyncValue<void> state;

  // @override
  // build() async {}

  @override
  bool updateShouldNotify(AsyncValue<void> previous, AsyncValue<void> next) {
    throw UnimplementedError();
  }
}
