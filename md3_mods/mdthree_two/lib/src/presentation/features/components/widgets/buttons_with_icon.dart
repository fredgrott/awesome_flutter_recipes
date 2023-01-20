// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/domain/entities/naked_entities.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_functions.dart';

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'ElevatedButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          FilledButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'FilledButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          FilledButton.tonalIcon(
            onPressed: handlePressed(
              context,
              false,
              'FilledTonalButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          OutlinedButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'OutlinedButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          TextButton.icon(
            onPressed: handlePressed(
              context,
              false,
              'TextButton with Icon',
            ),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
        ],
      ),
    );
  }
}
