// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

import 'package:mdthree_one/src/presentation/features/components/widgets/checkboxes.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/chips.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/dropdown_menus.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/radios.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/sliders.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/switches.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

  @override
  Widget build(BuildContext context) {
    

    return const ComponentGroupDecoration(
      label: 'Selection',
      children: [
        Chips(),
        DropdownMenus(),
        Radios(),
        Checkboxes(),
        Sliders(),
        Switches(),
      ],
    );
  }
}
