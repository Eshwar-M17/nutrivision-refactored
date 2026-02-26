import 'package:flutter/material.dart';

TextTheme createTextTheme(BuildContext context) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme textTheme = baseTextTheme.copyWith(
    bodyLarge: baseTextTheme.bodyLarge?.copyWith(fontFamily: 'Space Grotesk'),
    bodyMedium: baseTextTheme.bodyMedium?.copyWith(fontFamily: 'Space Grotesk'),
    bodySmall: baseTextTheme.bodySmall?.copyWith(fontFamily: 'Space Grotesk'),
    labelLarge: baseTextTheme.labelLarge?.copyWith(fontFamily: 'Space Grotesk'),
    labelMedium: baseTextTheme.labelMedium?.copyWith(
      fontFamily: 'Space Grotesk',
    ),
    labelSmall: baseTextTheme.labelSmall?.copyWith(fontFamily: 'Space Grotesk'),
  );
  return textTheme;
}
