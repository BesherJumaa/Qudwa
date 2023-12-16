import 'package:flutter/material.dart';
import 'package:besher_s_application1/presentation/android_large_eight_screen/android_large_eight_screen.dart';
import 'package:besher_s_application1/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:besher_s_application1/presentation/android_large_eleven_screen/android_large_eleven_screen.dart';
import 'package:besher_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeEightScreen = '/android_large_eight_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeElevenScreen = '/android_large_eleven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeEightScreen: AndroidLargeEightScreen.builder,
        androidLargeSixScreen: AndroidLargeSixScreen.builder,
        androidLargeElevenScreen: AndroidLargeElevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeEightScreen.builder
      };
}
