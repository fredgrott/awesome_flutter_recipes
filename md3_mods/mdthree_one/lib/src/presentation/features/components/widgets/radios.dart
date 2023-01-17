// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

enum Value { first, second }

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  Value? _value = Value.first;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Radio button',
      tooltipMessage: 'Use Radio<T> to show radio buttons',
      // Got RenderFlex errors, problem solution might be
      // adding mainAxisSize: MainAxisSize.min to Rows
      // and wrappping itmes like Text in Flexibilie
      // Widgets.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(child: Radio<Value>(
            value: Value.first,
            groupValue: _value,
            //
            // ignore: prefer-extracting-callbacks
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),),
          Flexible(child: Radio<Value>(
            value: Value.second,
            groupValue: _value,
            //
            // ignore: prefer-extracting-callbacks
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),),
          
        ],
      ),
    );
  }
}
