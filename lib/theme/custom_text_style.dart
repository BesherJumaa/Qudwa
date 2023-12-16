import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargeGray100 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray100,
      );
  // Label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargePurple20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple20001,
        fontWeight: FontWeight.w800,
      );
  static get labelLargePurple20001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple20001,
      );
  // Title text style
  static get titleLargeTeal300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal300,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
