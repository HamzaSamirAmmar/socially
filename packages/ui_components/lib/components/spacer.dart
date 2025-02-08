import 'package:flutter/material.dart';
import 'package:socially_ui_components/spacing.dart';

/// Widget to create empty content based on the provided width and height.
class SSpacer extends StatelessWidget {
  /// Creates an instance of [SSpacer] widget.
  ///
  /// By default spacer will take medium space in horizontal and vertical
  /// directions according to [SSpacing] values.
  const SSpacer({
    Key? key,
    double gapWidth = SSpacing.m,
    double gapHeight = SSpacing.m,
    double multiplier = 1,
  })  : _width = multiplier * gapWidth,
        _height = multiplier * gapHeight,
        super(key: key);

  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
    );
  }
}
