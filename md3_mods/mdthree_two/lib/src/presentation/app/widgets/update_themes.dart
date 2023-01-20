// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values, avoid_positional_boolean_parameters

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mdthree_two/src/presentation/themes/app_flex_key_colors.dart';
import 'package:mdthree_two/src/presentation/themes/app_flex_sub_theme_datas.dart';
import 'package:mdthree_two/src/presentation/themes/app_text_themes.dart';

/// FlexColorScheme supplies more design power through some more color generation
/// choices hence need to supply extra parameters then generate the MD3 specific 
/// color scheme.
/// 
/// @author Fredrick Allan Grott
// ignore: long-method
ThemeData updateThemes(
  FlexScheme flexSchemeSelected,
  bool useMaterial3,
  bool useLightMode,
) {
  // I generate the proper ColorScheme which is used as seeed here
  // from the FlexColorScheme parameters
  late ColorScheme colorSchemeSelected;

  if (useLightMode) {
    final FlexColorScheme lightFlexColorScheme = FlexColorScheme.light(
      scheme: flexSchemeSelected,
      usedColors: 6,
      surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
      blendLevel: 10,
      appBarStyle: FlexAppBarStyle.primary,
      appBarOpacity: 1,
      transparentStatusBar: true,
      appBarElevation: 0,
      bottomAppBarElevation: 0,
      tabBarStyle: FlexTabBarStyle.forAppBar,
      lightIsWhite: false,
      swapColors: false,
      tooltipsMatchBackground: false,
      subThemesData: staticFlexSubThemesData,
      keyColors: appFlexKeysColors,
      useMaterial3ErrorColors: false,
      tones: FlexTones.soft(Brightness.light),
      visualDensity: VisualDensity.comfortable,
      textTheme: appLightTextTheme,
      primaryTextTheme: appLightTextTheme,
      materialTapTargetSize: null,
      pageTransitionsTheme: null,
      typography: Typography.material2021(),
      applyElevationOverlayColor: true,
      useMaterial3: useMaterial3,
      swapLegacyOnMaterial3: false,
    );

    colorSchemeSelected = lightFlexColorScheme.toScheme;
  } else {
    final FlexColorScheme darkFlexColorScheme = FlexColorScheme.dark(
      scheme: flexSchemeSelected,
      usedColors: 6,
      surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
      blendLevel: 10,
      appBarStyle: FlexAppBarStyle.primary,
      appBarOpacity: 1,
      transparentStatusBar: true,
      appBarElevation: 0,
      bottomAppBarElevation: 0,
      tabBarStyle: FlexTabBarStyle.forAppBar,
      darkIsTrueBlack: false,
      swapColors: false,
      tooltipsMatchBackground: false,
      subThemesData: staticFlexSubThemesData,
      keyColors: appFlexKeysColors,
      useMaterial3ErrorColors: false,
      tones: FlexTones.soft(Brightness.light),
      visualDensity: VisualDensity.comfortable,
      textTheme: appDarkTextTheme,
      primaryTextTheme: appDarkTextTheme,
      materialTapTargetSize: null,
      pageTransitionsTheme: null,
      typography: Typography.material2021(),
      applyElevationOverlayColor: true,
      useMaterial3: useMaterial3,
      swapLegacyOnMaterial3: false,
    );

    colorSchemeSelected = darkFlexColorScheme.toScheme;
  }

  return ThemeData(
    useMaterial3: useMaterial3,
    brightness: useLightMode ? Brightness.light : Brightness.dark,
    colorScheme: colorSchemeSelected,
  );
}
