// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class DropdownMenus extends StatefulWidget {
  const DropdownMenus({super.key});

  @override
  State<DropdownMenus> createState() => _DropdownMenusState();
}

class _DropdownMenusState extends State<DropdownMenus> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  IconLabel? selectedIcon = IconLabel.smile;
  ColorLabel? selectedColor;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<ColorLabel>> colorEntries =
        <DropdownMenuEntry<ColorLabel>>[];
    for (final ColorLabel color in ColorLabel.values) {
      colorEntries.add(
        DropdownMenuEntry<ColorLabel>(
          value: color,
          label: color.label,
          enabled: color.label != 'Grey',
        ),
      );
    }

    final List<DropdownMenuEntry<IconLabel>> iconEntries =
        <DropdownMenuEntry<IconLabel>>[];
    for (final IconLabel icon in IconLabel.values) {
      iconEntries.add(DropdownMenuEntry<IconLabel>(
        value: icon,
        label: icon.label,
      ),);
    }

    return ComponentDecoration(
      label: 'Dropdown menus',
      tooltipMessage: 'Use DropdownMenu<T> to show dropdown menus',
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.start,
        runSpacing: 20,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          DropdownMenu<ColorLabel>(
            label: const Text('Color'),
            enableFilter: true,
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
            ),
            controller: colorController,
            //
            // ignore: prefer-extracting-callbacks
            onSelected: (color) {
              setState(() {
                selectedColor = color;
              });
            },
            dropdownMenuEntries: colorEntries,
          ),
          DropdownMenu<IconLabel>(
            leadingIcon: const Icon(Icons.search),
            label: const Text('Icon'),
            controller: iconController,
            initialSelection: IconLabel.smile,
            //
            // ignore: prefer-extracting-callbacks
            onSelected: (icon) {
              setState(() {
                selectedIcon = icon;
              });
            },
            dropdownMenuEntries: iconEntries,
          ),
          Icon(
            selectedIcon?.icon,
            color: selectedColor?.color ?? Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}

enum ColorLabel {
  blue(
    'Blue',
    Colors.blue,
  ),
  pink(
    'Pink',
    Colors.pink,
  ),
  green(
    'Green',
    Colors.green,
  ),
  yellow(
    'Yellow',
    Colors.yellow,
  ),
  grey(
    'Grey',
    Colors.grey,
  );

  const ColorLabel(
    this.label,
    this.color,
  );
  final String label;
  final Color color;
}

enum IconLabel {
  smile(
    'Smile',
    Icons.sentiment_satisfied_outlined,
  ),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush(
    'Brush',
    Icons.brush_outlined,
  ),
  heart(
    'Heart',
    Icons.favorite,
  );

  const IconLabel(
    this.label,
    this.icon,
  );
  final String label;
  final IconData icon;
}
