// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

import 'package:mdthree_one/src/presentation/features/components/widgets/buttons.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/floating_action_buttons.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/icon_toggle_buttons.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/segmented_buttons.dart';


class MaterialActions extends StatelessWidget {
  const MaterialActions({super.key});

  @override
  Widget build(BuildContext context) {
    

    return const ComponentGroupDecoration(
      label: 'Actions',
      children: <Widget>[
        Buttons(),
        FloatingActionButtons(),
        IconToggleButtons(),
        SegmentedButtons(),
      ],
    );
  }
}
