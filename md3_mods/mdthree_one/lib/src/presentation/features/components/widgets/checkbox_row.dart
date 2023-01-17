// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';

class CheckboxRow extends StatefulWidget {
  const CheckboxRow({
    super.key,
    required this.isError,
  });

  final bool isError;

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  bool? isChecked0 = true;
  bool? isChecked1;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    // Got RenderFlex errors, problem solution might be
    // adding mainAxisSize: MainAxisSize.min to Rows
    // and wrappping itmes like Text in Flexibilie
    // Widgets.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        //
        // ignore: prefer-extracting-callbacks
        Flexible(child: Checkbox(
          value: isChecked0,
          tristate: true,
          // ignore: prefer-extracting-callbacks
          onChanged: (value) {
            setState(() {
              isChecked0 = value;
            });
          },
          isError: widget.isError,
        ),),
        Flexible(child: Checkbox(
          value: isChecked1,
          tristate: true,
          // ignore: prefer-extracting-callbacks
          onChanged: (value) {
            setState(() {
              isChecked1 = value;
            });
          },
          isError: widget.isError,
        ),),
        //
        // ignore: prefer-extracting-callbacks
        Flexible(child: Checkbox(
          value: isChecked2,
          tristate: true,
          // ignore: prefer-extracting-callbacks
          onChanged: (value) {
            setState(() {
              isChecked2 = value;
            });
          },
          isError: widget.isError,
        ),),
        //
        // ignore: prefer-extracting-callbacks
        Flexible(child: Checkbox(
          value: true,
          tristate: true,
          onChanged: null,
          isError: widget.isError,
        ),),
        
      ],
    );
  }
}
