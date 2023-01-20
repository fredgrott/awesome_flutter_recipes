// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/selection.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/text_inputs.dart';

class SecondComponentList extends StatelessWidget {
  const SecondComponentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Selection(),
        TextInputs(),
      ]
          .animate(
            interval: 800.ms,
          )
          .fadeIn(
            duration: 900.ms,
            delay: 700.ms,
          )
          .saturate(
            begin: 0.25,
            end: 1.0,
            delay: 400.ms,
            duration: 900.ms,
          )
          .move(
            begin: const Offset(
              -16,
              0,
            ),
            curve: Curves.easeOutQuad,
          ),
    );
  }
}
