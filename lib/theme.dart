import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006e29),
      surfaceTint: Color(0xff006e29),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff25f46a),
      onPrimaryContainer: Color(0xff006b28),
      secondary: Color(0xff066d2a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff99f4a0),
      onSecondaryContainer: Color(0xff10722e),
      tertiary: Color(0xff006874),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff41e8ff),
      onTertiaryContainer: Color(0xff006571),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff2fded),
      onSurface: Color(0xff151e14),
      onSurfaceVariant: Color(0xff3b4b3b),
      outline: Color(0xff6b7b69),
      outlineVariant: Color(0xffbacbb7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff293329),
      inversePrimary: Color(0xff00e55f),
      primaryFixed: Color(0xff6aff86),
      onPrimaryFixed: Color(0xff002107),
      primaryFixedDim: Color(0xff00e55f),
      onPrimaryFixedVariant: Color(0xff00531d),
      secondaryFixed: Color(0xff9cf7a3),
      onSecondaryFixed: Color(0xff002107),
      secondaryFixedDim: Color(0xff80da89),
      onSecondaryFixedVariant: Color(0xff00531d),
      tertiaryFixed: Color(0xff99f0ff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff24daf0),
      onTertiaryFixedVariant: Color(0xff004f58),
      surfaceDim: Color(0xffd2ddce),
      surfaceBright: Color(0xfff2fded),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf7e7),
      surfaceContainer: Color(0xffe6f1e1),
      surfaceContainerHigh: Color(0xffe0ebdc),
      surfaceContainerHighest: Color(0xffdbe6d6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004015),
      surfaceTint: Color(0xff006e29),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007e31),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004015),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff217d38),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003c44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff007886),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff2fded),
      onSurface: Color(0xff0a130b),
      onSurfaceVariant: Color(0xff2b3a2b),
      outline: Color(0xff475646),
      outlineVariant: Color(0xff617160),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff293329),
      inversePrimary: Color(0xff00e55f),
      primaryFixed: Color(0xff007e31),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006324),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff217d38),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006324),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff007886),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005e69),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbfcabb),
      surfaceBright: Color(0xfff2fded),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf7e7),
      surfaceContainer: Color(0xffe0ebdc),
      surfaceContainerHigh: Color(0xffd5e0d1),
      surfaceContainerHighest: Color(0xffcad5c6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003410),
      surfaceTint: Color(0xff006e29),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00551e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003410),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00551e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003138),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00515b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff2fded),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff213021),
      outlineVariant: Color(0xff3e4d3d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff293329),
      inversePrimary: Color(0xff00e55f),
      primaryFixed: Color(0xff00551e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003c13),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00551e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003c13),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00515b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003940),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb1bcad),
      surfaceBright: Color(0xfff2fded),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffe9f4e4),
      surfaceContainer: Color(0xffdbe6d6),
      surfaceContainerHigh: Color(0xffcdd8c8),
      surfaceContainerHighest: Color(0xffbfcabb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromRGBO(37, 244, 106, 1),
      surfaceTint: Color(0xff00e55f),
      onPrimary: Color(0xff003912),
      primaryContainer: Color(0xff25f46a),
      onPrimaryContainer: Color(0xff006b28),
      secondary: Color(0xff80da89),
      onSecondary: Color(0xff003912),
      secondaryContainer: Color(0xff006b28),
      onSecondaryContainer: Color(0xff8ee996),
      tertiary: Color(0xffd1f8ff),
      onTertiary: Color(0xff00363d),
      tertiaryContainer: Color(0xff41e8ff),
      onTertiaryContainer: Color(0xff006571),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0c160d),
      onSurface: Color(0xffdbe6d6),
      onSurfaceVariant: Color(0xffbacbb7),
      outline: Color(0xff859582),
      outlineVariant: Color(0xff3b4b3b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d6),
      inversePrimary: Color(0xff006e29),
      primaryFixed: Color(0xff6aff86),
      onPrimaryFixed: Color(0xff002107),
      primaryFixedDim: Color(0xff00e55f),
      onPrimaryFixedVariant: Color(0xff00531d),
      secondaryFixed: Color(0xff9cf7a3),
      onSecondaryFixed: Color(0xff002107),
      secondaryFixedDim: Color(0xff80da89),
      onSecondaryFixedVariant: Color(0xff00531d),
      tertiaryFixed: Color(0xff99f0ff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff24daf0),
      onTertiaryFixedVariant: Color(0xff004f58),
      surfaceDim: Color(0xff0c160d),
      surfaceBright: Color(0xff323c31),
      surfaceContainerLowest: Color(0xff071008),
      surfaceContainerLow: Color(0xff151e14),
      surfaceContainer: Color(0xff192218),
      surfaceContainerHigh: Color(0xff232c22),
      surfaceContainerHighest: Color(0xff2d372d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7ffc7),
      surfaceTint: Color(0xff00e55f),
      onPrimary: Color(0xff003912),
      primaryContainer: Color(0xff25f46a),
      onPrimaryContainer: Color(0xff004a1a),
      secondary: Color(0xff95f19d),
      onSecondary: Color(0xff002d0c),
      secondaryContainer: Color(0xff4aa258),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd1f8ff),
      onTertiary: Color(0xff00363d),
      tertiaryContainer: Color(0xff41e8ff),
      onTertiaryContainer: Color(0xff00474f),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0c160d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd0e1cc),
      outline: Color(0xffa6b7a2),
      outlineVariant: Color(0xff849582),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d6),
      inversePrimary: Color(0xff00541e),
      primaryFixed: Color(0xff6aff86),
      onPrimaryFixed: Color(0xff001604),
      primaryFixedDim: Color(0xff00e55f),
      onPrimaryFixedVariant: Color(0xff004015),
      secondaryFixed: Color(0xff9cf7a3),
      onSecondaryFixed: Color(0xff001604),
      secondaryFixedDim: Color(0xff80da89),
      onSecondaryFixedVariant: Color(0xff004015),
      tertiaryFixed: Color(0xff99f0ff),
      onTertiaryFixed: Color(0xff001417),
      tertiaryFixedDim: Color(0xff24daf0),
      onTertiaryFixedVariant: Color(0xff003c44),
      surfaceDim: Color(0xff0c160d),
      surfaceBright: Color(0xff3d473c),
      surfaceContainerLowest: Color(0xff030903),
      surfaceContainerLow: Color(0xff172016),
      surfaceContainer: Color(0xff212a20),
      surfaceContainerHigh: Color(0xff2b352b),
      surfaceContainerHighest: Color(0xff364035),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7ffc7),
      surfaceTint: Color(0xff00e55f),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff25f46a),
      onPrimaryContainer: Color(0xff002609),
      secondary: Color(0xffc3ffc3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff7cd686),
      onSecondaryContainer: Color(0xff000f02),
      tertiary: Color(0xffd1f8ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff41e8ff),
      onTertiaryContainer: Color(0xff002429),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0c160d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe3f5df),
      outlineVariant: Color(0xffb6c7b3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdbe6d6),
      inversePrimary: Color(0xff00541e),
      primaryFixed: Color(0xff6aff86),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff00e55f),
      onPrimaryFixedVariant: Color(0xff001604),
      secondaryFixed: Color(0xff9cf7a3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff80da89),
      onSecondaryFixedVariant: Color(0xff001604),
      tertiaryFixed: Color(0xff99f0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff24daf0),
      onTertiaryFixedVariant: Color(0xff001417),
      surfaceDim: Color(0xff0c160d),
      surfaceBright: Color(0xff495347),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff192218),
      surfaceContainer: Color(0xff293329),
      surfaceContainerHigh: Color(0xff343e33),
      surfaceContainerHighest: Color(0xff3f493e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
