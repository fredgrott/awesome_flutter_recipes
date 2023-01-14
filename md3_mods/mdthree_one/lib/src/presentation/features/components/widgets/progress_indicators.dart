// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class ProgressIndicators extends StatefulWidget {
  const ProgressIndicators({super.key});

  @override
  State<ProgressIndicators> createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  bool playProgressIndicator = false;

  @override
  Widget build(BuildContext context) {
    final double? progressValue = playProgressIndicator ? null : 0.7;

    return ComponentDecoration(
      label: 'Progress indicators',
      tooltipMessage:
          'There are 2 types of progress indicators: \nCircularProgressIndicator and LinearProgressIndicator',
      child: Column(
        children: <Widget>[
          Row(
            children: [
              //
              // ignore: prefer-extracting-callbacks
              IconButton(
                //
                // ignore: prefer-extracting-callbacks
                onPressed: () {
                  setState(
                    () {
                      playProgressIndicator = !playProgressIndicator;
                    },
                  );
                },
                isSelected: playProgressIndicator,
                selectedIcon: const Icon(Icons.pause),
                icon: const Icon(Icons.play_arrow),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircularProgressIndicator(
                      value: progressValue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: progressValue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
