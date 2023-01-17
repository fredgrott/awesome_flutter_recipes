// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/communication.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/containment.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/material_actions.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/navigation.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/selection.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/text_inputs.dart';


class FirstComponentList extends StatelessWidget {
  const FirstComponentList({
    super.key,
    required this.showNavBottomBar,
    required this.scaffoldKey,
    required this.showSecondList,
  });

  final bool showNavBottomBar;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool showSecondList;

  @override
  Widget build(BuildContext context) {
    

    return ListView(
        // Same as children: AnimateList(children: [])
        children: [
          const MaterialActions(),
          const Communication(),
          const Containment(),
          Navigation(scaffoldKey: scaffoldKey),
          if (!showSecondList) ...[
            const Selection(),
            const TextInputs(),
          ],
        ].animate(interval: 600.ms,)
        .fadeIn(duration: 900.ms, delay: 400.ms,)
        .saturate(begin: 0.25, end: 1.0, delay: 400.ms, duration: 900.ms,)
        .move(begin: const Offset(-16, 0,), curve: Curves.easeOutQuad,),
        ///     interval: 100.ms,
       
    );
  }
}
