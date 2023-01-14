// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/buttons_with_icon.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/buttons_without_icon.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Common Buttons',
      tooltipMessage:
          'Common buttons include: \nElevatedButton, FilledButton, FilledButton.tonal, OutlinedButton and TextButton',
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: const <Widget>[
          ButtonsWithoutIcon(isDisabled: false),
          ButtonsWithIcon(),
          ButtonsWithoutIcon(isDisabled: true),
        ],
      ),
    );
  }
}
