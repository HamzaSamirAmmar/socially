// ignore: library_prefixes
import 'dart:math' as Math;

import 'package:flutter/material.dart';

/// A utility class that provides responsive design helpers
class Responsive {
  static const double _defaultDesignWidth = 393.0; // FIGMA DESIGN width
  static const double _defaultDesignHeight = 852.0; // FIGMA DESIGN height
  
  /// Get the screen width
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  
  /// Get the screen height
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
  
  /// Returns a width dimension scaled to the current screen size
  static double w(BuildContext context, double size) {
    return size * (screenWidth(context) / _defaultDesignWidth);
  }
  
  /// Returns a height dimension scaled to the current screen size
  static double h(BuildContext context, double size) {
    return size * (screenHeight(context) / _defaultDesignHeight);
  }
  
  /// Returns a font size scaled to the current screen size
  static double sp(BuildContext context, double size) {
    final scale = Math.min(
      screenWidth(context) / _defaultDesignWidth,
      screenHeight(context) / _defaultDesignHeight,
    );
    return size * scale;
  }
  
  /// Returns true if the screen width is >= 600
  static bool isTablet(BuildContext context) {
    return screenWidth(context) >= 600;
  }
  
  /// Returns true if the screen width is >= 1200
  static bool isDesktop(BuildContext context) {
    return screenWidth(context) >= 1200;
  }
  
  /// Returns padding that adapts to the screen size
  static EdgeInsets padding(BuildContext context, {
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: w(context, left ?? horizontal ?? all ?? 0),
      top: h(context, top ?? vertical ?? all ?? 0),
      right: w(context, right ?? horizontal ?? all ?? 0),
      bottom: h(context, bottom ?? vertical ?? all ?? 0),
    );
  }
  
  /// Returns a border radius that adapts to the screen size
  static BorderRadius radius(BuildContext context, double radius) {
    return BorderRadius.circular(w(context, radius));
  }
}
