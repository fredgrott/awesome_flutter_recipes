// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

class SwitchRow extends StatefulWidget {
  const SwitchRow({
    super.key,
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  bool value0 = false;
  bool value1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>((states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.check);
    }

    return const Icon(Icons.close);
  });

  @override
  Widget build(BuildContext context) {
    // Got RenderFlex errors, problem solution might be
    // adding mainAxisSize: MainAxisSize.min to Rows
    // and wrappping itmes like Text in Flexibilie
    // Widgets.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(child: Switch(
          value: value0,
          onChanged: widget.isEnabled
              ? (value) {
                  setState(() {
                    value0 = value;
                  });
                }
              : null,
        ),),
        Flexible(child: Switch(
          value: value1,
          onChanged: widget.isEnabled
              ? (value) {
                  setState(() {
                    value1 = value;
                  });
                }
              : null,
          thumbIcon: thumbIcon,
        ),),
        
      ],
    );
  }
}
