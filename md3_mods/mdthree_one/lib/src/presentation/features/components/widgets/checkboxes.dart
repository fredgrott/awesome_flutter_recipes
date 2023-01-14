// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/checkbox_row.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class Checkboxes extends StatelessWidget {
  const Checkboxes({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Checkboxes',
      tooltipMessage: 'Use Checkbox to show checkboxes',
      child: Column(
        children: const <Widget>[
          CheckboxRow(
            isError: false,
          ),
          CheckboxRow(
            isError: true,
          ),
        ],
      ),
    );
  }
}
