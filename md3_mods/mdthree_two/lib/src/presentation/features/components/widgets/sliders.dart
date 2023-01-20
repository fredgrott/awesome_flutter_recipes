// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_decoration.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double sliderValue0 = 30.0;
  double sliderValue1 = 20.0;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Sliders',
      tooltipMessage: 'Use Slider to show sliders',
      child: Column(
        children: <Widget>[
          // need for ios
          // ignore: prefer-extracting-callbacks
          Slider.adaptive(
            value: sliderValue0,
            // ignore: prefer-extracting-callbacks
            onChanged: (value) {
              setState(() {
                sliderValue0 = value;
              });
            },
            max: 100,
          ),
          const SizedBox(height: 20),
          // need for ios
          // ignore: prefer-extracting-callbacks
          Slider.adaptive(
            value: sliderValue1,
            // ignore: prefer-extracting-callbacks
            onChanged: (value) {
              setState(() {
                sliderValue1 = value;
              });
            },
            max: 100,
            divisions: 5,
            label: sliderValue1.round().toString(),
          ),
        ],
      ),
    );
  }
}
