import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/core/constants/letter_spacing.dart';

extension TextStylesExtension on BuildContext {
  TextStyle get defaultTextStyle => TextStyle(
    fontSize: 16.sp,
    color: Theme.of(this).colorScheme.onSecondary, // Dynamic color
    letterSpacing: kLetterSpacing.sp,
  );

  TextStyle get mentionTextStyle => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Theme.of(this).colorScheme.primary, // Mention text in primary color
    letterSpacing: kLetterSpacing.sp,
  );
}
