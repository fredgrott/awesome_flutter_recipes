// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_extras.dart';

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({super.key, required this.isDisabled,});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: handlePressed(context, isDisabled, 'ElevatedButton',),
            child: const Text('Elevated'),
          ),
          colDivider,
          FilledButton(
            onPressed: handlePressed(context, isDisabled, 'FilledButton',),
            child: const Text('Filled'),
          ),
          colDivider,
          FilledButton.tonal(
            onPressed: handlePressed(context, isDisabled, 'FilledTonalButton',),
            child: const Text('Filled Tonal'),
          ),
          colDivider,
          OutlinedButton(
            onPressed: handlePressed(context, isDisabled, 'OutlinedButton',),
            child: const Text('Outlined'),
          ),
          colDivider,
          TextButton(
              onPressed: handlePressed(context, isDisabled, 'TextButton',),
              child: const Text('Text'),),
        ],
      ),
    );
  }
}
