// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
// ignore: prefer-static-class
const double narrowScreenWidthThreshold = 450;
//
// ignore: prefer-static-class
const double transitionLength = 500;

enum ColorSeed {
  baseColor(
    'M3 Baseline',
    Color(0xff6750a4),
  ),
  indigo(
    'Indigo',
    Colors.indigo,
  ),
  blue(
    'Blue',
    Colors.blue,
  ),
  teal(
    'Teal',
    Colors.teal,
  ),
  green(
    'Green',
    Colors.green,
  ),
  yellow(
    'Yellow',
    Colors.yellow,
  ),
  orange(
    'Orange',
    Colors.orange,
  ),
  deepOrange(
    'Deep Orange',
    Colors.deepOrange,
  ),
  pink(
    'Pink',
    Colors.pink,
  );

  const ColorSeed(
    this.label,
    this.color,
  );
  final String label;
  final Color color;
}

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);
  final int value;
}
