// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

import 'package:mdthree_one/src/presentation/features/components/widgets/bottom_app_bars.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/navigation_bars.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/navigation_drawers.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/tabs.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    

    return ComponentGroupDecoration(
      label: 'Navigation',
      children: [
        const BottomAppBars(),
        const NavigationBars(
          selectedIndex: 0,
          isExampleBar: true,
        ),
        NavigationDrawers(scaffoldKey: scaffoldKey),
        const Tabs(),
      ],
    );
  }
}
