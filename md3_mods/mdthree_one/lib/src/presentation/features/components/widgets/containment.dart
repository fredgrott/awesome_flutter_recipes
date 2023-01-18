// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';


import 'package:mdthree_one/src/presentation/features/components/widgets/cards.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/dialogs.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/fg_bottom_sheet_section.dart';

class Containment extends StatelessWidget {
  const Containment({super.key});

  @override
  Widget build(BuildContext context) {
    

    return ComponentGroupDecoration(
      label: 'Containment',
      children: [
        FGBottomSheetSection(),
        const Cards(),
        const Dialogs(),
      ],
    );
  }
}
