// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{
    Sizes.large,
    Sizes.extraLarge,
  };

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(
          value: Sizes.extraSmall,
          label: Text('XS'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.small,
          label: Text('S'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.medium,
          label: Text('M'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.extraLarge,
          label: Text('XL'),
        ),
      ],
      selected: selection,
      //
      // ignore: prefer-extracting-callbacks
      onSelectionChanged: (newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
