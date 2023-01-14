// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class NavigationDrawers extends StatelessWidget {
  const NavigationDrawers({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Navigation drawer',
      tooltipMessage:
          'Use NavigationDrawer to show navigation drawer or end drawer',
      child: UnconstrainedBox(
        //
        // ignore: prefer-extracting-callbacks
        child: TextButton(
          //
          // ignore: prefer-extracting-callbacks
          onPressed: () {
            scaffoldKey.currentState!.openEndDrawer();
          },
          child: const Text(
            'Open End Drawer',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
