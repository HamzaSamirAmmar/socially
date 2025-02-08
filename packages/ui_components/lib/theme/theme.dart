import 'package:flutter/material.dart';
import 'package:socially_ui_components/spacing.dart';
import 'package:socially_ui_components/theme/color.dart';

import 'package:socially_ui_components/theme/text_style.dart';

/// Default theme of socially domain.
final sTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  textTheme: _textTheme,
  colorScheme: _colorScheme,
  shadowColor: SColor.shade,
  scaffoldBackgroundColor: SColor.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      foregroundColor: SColor.primary,
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: SSpacing.m),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: SColor.shade5,
    selectionColor: SColor.shade,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: SColor.white,
    elevation: 0.0,
  ),
);

const _textTheme = TextTheme(
  displayMedium: STextStyle.racingDisplay1,
  headlineLarge: STextStyle.racingH1,
  headlineMedium: STextStyle.racingH2,
  headlineSmall: STextStyle.racingH3,
  titleLarge: STextStyle.racingH4,
  titleMedium: STextStyle.racingH5,
  bodyLarge: STextStyle.racingBody,
  bodyMedium: STextStyle.robotoBody,
  bodySmall: STextStyle.robotoSmallBody,
  labelMedium: STextStyle.robotoSubtitle,
  labelSmall: STextStyle.robotoSmallSubtitle,
);

const _colorScheme = ColorScheme(
  primary: SColor.primary,
  secondary: SColor.secondary,
  tertiary: SColor.tertiary,
  surface: SColor.white,
  background: SColor.white,
  error: SColor.primary70,
  onPrimary: SColor.white,
  onSecondary: SColor.secondary5,
  onSurface: SColor.tertiary30,
  onBackground: SColor.black,
  onError: SColor.supportive5,
  surfaceVariant: SColor.shade5,
  brightness: Brightness.light,
);
