import 'package:bosch_weather_app_challenge/data/data.dart';
import 'package:bosch_weather_app_challenge/ui/splash_screen/provider.dart';
import 'package:bosch_weather_app_challenge/ui/ui.dart'
    show
        DailyWeatherCard,
        DailyWeatherList,
        HomePage,
        SplashPage,
        homePageContentNotifierProvider;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mock_colors_notifier.dart';
import 'mock_home_page_content_notifier.dart';

import 'mock_splash_notifier.dart';

void main() {
  testWidgets('Testing Home Page with empty daily weather list',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          colorsNotifierProvider.overrideWith(() => MockColorsNotifier()),
          homePageContentNotifierProvider.overrideWith(
            () => MockHomePageContentNotifier(data: []),
          ),
          splashNotifierProvider.overrideWith(() => MockSplashNotifier())
        ],
        child: const SplashPage(),
      ),
    );

    // Verify that MaterialApp is present in the widget tree.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that HomePage is present in the widget tree.
    expect(find.byType(HomePage), findsOneWidget);

    // Verify that DailyWeatherList is present in the widget tree.
    expect(find.byType(DailyWeatherList), findsOneWidget);

    // Verify that DailyWeatherList is not present in the widget tree.
    expect(find.byType(DailyWeatherCard), findsNothing);

    // Verify that the bellow text is present in the widget tree.
    expect(find.text('No content available.'), findsOneWidget);
  });

  testWidgets('Testing Home Page with DailyWeather List',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          colorsNotifierProvider.overrideWith(() => MockColorsNotifier()),
          homePageContentNotifierProvider.overrideWith(
            () => MockHomePageContentNotifier(data: mockedHomePageData),
          ),
          splashNotifierProvider.overrideWith(() => MockSplashNotifier())
        ],
        child: const SplashPage(),
      ),
    );

    // Verify that MaterialApp is present in the widget tree.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that HomePage is present in the widget tree.
    expect(find.byType(HomePage), findsOneWidget);

    // Verify that MaterialApp is present in the widget tree.
    expect(find.byType(DailyWeatherList), findsOneWidget);

    // Should not found the text bellow because the list is not empty state.
    expect(find.text('No content available.'), findsNothing);

    // Verify that DailyWeatherCard is present in the widget tree.
    expect(find.byType(DailyWeatherCard), findsWidgets);
  });
}
