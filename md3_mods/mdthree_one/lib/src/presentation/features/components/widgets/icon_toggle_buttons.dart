// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/button_styles.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_extras.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/icon_toggle_button.dart';

class IconToggleButtons extends StatefulWidget {
  const IconToggleButtons({super.key});

  @override
  State<IconToggleButtons> createState() => _IconToggleButtonsState();
}

class _IconToggleButtonsState extends State<IconToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Icon buttons',
      tooltipMessage:
          'IconButton has 4 types: standard, filled, filled tonal, and outlined',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            // Standard IconButton
            children: const <Widget>[
              IconToggleButton(isEnabled: true),
              colDivider,
              IconToggleButton(isEnabled: false),
            ],
          ),
          Column(
            children: const <Widget>[
              // Filled IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledButtonStyle,
              ),
            ],
          ),
          Column(
            children: const <Widget>[
              // Filled Tonal IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledTonalButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledTonalButtonStyle,
              ),
            ],
          ),
          Column(
            children: const <Widget>[
              // Outlined IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledOutlinedButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledOutlinedButtonStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
