// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/navigation_bars.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/progress_indicators.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/snackbar_section.dart';

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
      label: 'Communication',
      children: [
        NavigationBars(
          selectedIndex: 1,
          isExampleBar: true,
          isBadgeExample: true,
        ),
        ProgressIndicators(),
        SnackBarSection(),
      ],
    );
  }
}
