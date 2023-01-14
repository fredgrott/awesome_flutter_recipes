// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

//
// ignore: prefer-static-class
const List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    icon: Icon(Icons.widgets_outlined),
    selectedIcon: Icon(Icons.widgets),
    label: 'Components',
    tooltip: 'Updated component list',
  ),
  NavigationDestination(
    icon: Icon(Icons.format_paint_outlined),
    selectedIcon: Icon(Icons.format_paint),
    label: 'Color',
    tooltip: 'Color palettes in light and dark modes',
  ),
  NavigationDestination(
    icon: Icon(Icons.text_snippet_outlined),
    selectedIcon: Icon(Icons.text_snippet),
    label: 'Typography',
    tooltip: 'Different text styles for the default TextTheme',
  ),
  NavigationDestination(
    icon: Icon(Icons.invert_colors_on_outlined),
    selectedIcon: Icon(Icons.opacity),
    label: 'Elevation',
    tooltip:
        'Different ways of elevation with a new supported feature "surfaceTintColor"',
  ),
];
//
// ignore: prefer-static-class
const List<Widget> exampleBarDestinations = [
  NavigationDestination(
    icon: Icon(Icons.explore_outlined),
    selectedIcon: Icon(Icons.explore),
    label: 'Explore',
    tooltip: '',
  ),
  NavigationDestination(
    icon: Icon(Icons.pets_outlined),
    selectedIcon: Icon(Icons.pets),
    label: 'Pets',
    tooltip: '',
  ),
  NavigationDestination(
    icon: Icon(Icons.account_box_outlined),
    selectedIcon: Icon(Icons.account_box),
    label: 'Account',
    tooltip: '',
  ),
];
//
// ignore: prefer-static-class
final List<Widget> barWithBadgeDestinations = [
  NavigationDestination(
    icon: Badge.count(
      count: 1000,
      child: const Icon(Icons.mail_outlined),
    ),
    selectedIcon: Badge.count(
      count: 1000,
      child: const Icon(Icons.mail),
    ),
    label: 'Mail',
    tooltip: '',
  ),
  const NavigationDestination(
    icon: Badge(
      label: Text('10'),
      child: Icon(Icons.chat_bubble_outline),
    ),
    selectedIcon: Badge(
      label: Text('10'),
      child: Icon(Icons.chat_bubble),
    ),
    label: 'Chat',
    tooltip: '',
  ),
  const NavigationDestination(
    icon: Badge(child: Icon(Icons.group_outlined)),
    selectedIcon: Badge(child: Icon(Icons.group_rounded)),
    label: 'Rooms',
    tooltip: '',
  ),
  NavigationDestination(
    icon: Badge.count(
      count: 3,
      child: const Icon(Icons.videocam_outlined),
    ),
    selectedIcon: Badge.count(
      count: 3,
      child: const Icon(Icons.videocam),
    ),
    label: 'Meet',
    tooltip: '',
  ),
];
