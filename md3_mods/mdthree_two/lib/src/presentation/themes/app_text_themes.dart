// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme appLightTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
);

final TextTheme appDarkTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.

    fontFamily: GoogleFonts.robotoMono().fontFamily,
  ),
);
