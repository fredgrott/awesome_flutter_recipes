// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_extras.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/multiple_choice.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/single_choice.dart';

class SegmentedButtons extends StatelessWidget {
  const SegmentedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Segmented buttons',
      tooltipMessage:
          'SegmentedButton has 2 types: single choice and multiple choice',
      child: Column(
        children: const <Widget>[
          SingleChoice(),
          colDivider,
          MultipleChoice(),
        ],
      ),
    );
  }
}
