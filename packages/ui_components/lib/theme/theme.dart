import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Default theme of socially domain.
final sTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  textTheme: _textTheme,
  colorScheme: _colorScheme,
  shadowColor: Colors.black,
  scaffoldBackgroundColor:
      _colorScheme.surface, // Use the surface color for consistency
  appBarTheme: AppBarTheme(
    backgroundColor: _colorScheme.surface, // Match scaffold background
    elevation: 0.0,
    iconTheme: IconThemeData(
      color: _colorScheme.onSurface,
    ), // Icon color matches text
    titleTextStyle: _textTheme.headlineLarge?.copyWith(
      color: _colorScheme.onSurface,
    ),
  ),
);

final _textTheme = GoogleFonts.gloryTextTheme();

const _colorScheme = ColorScheme(
  primary: Color(0xFF05101C), // Dark background color
  secondary: Color(0xFFFFFFFF), // Darker shade
  surface: Color(0xFF05101C), // Light surface color for text areas
  error: Color(0xFFFF5A5A), // Red for error states
  onPrimary: Color(0xFFFFFFFF), // Text color on primary
  onSecondary: Color(0xFF363636), // Text color on secondary
  onSurface: Color(0xFFFFFFFF), // Dark text color on light surfaces
  onError: Color(0xFFFFFFFF), // Text color on error backgrounds
  brightness: Brightness.light, // Based on the overall dark theme of the app
);
