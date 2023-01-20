// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/domain/entities/naked_entities.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_decoration.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Chips',
      tooltipMessage:
          'Use ActionChip, FilterChip, and InputChip to show chips. \nActionChip can also be used for suggestion chip',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: <Widget>[
              ActionChip(
                avatar: const Icon(Icons.chat_outlined),
                label: const Text('Assist'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                avatar: const Icon(Icons.alarm_add_outlined),
                label: const Text('Set alarm'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              const ActionChip(
                avatar: Icon(Icons.indeterminate_check_box_outlined),
                label: Text('No Action'),
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: <Widget>[
              FilterChip(
                label: const Text('Filter'),
                //
                // ignore: no-empty-block
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: const Text('Selected'),
                selected: true,
                //
                // ignore: no-empty-block
                onSelected: (isSelected) {},
              ),
              const FilterChip(
                label: Text('Disabled'),
                onSelected: null,
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: <Widget>[
              InputChip(
                label: const Text('Input'),
                //
                // ignore: no-empty-block
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Egg'),
                //
                // ignore: no-empty-block
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Lettuce'),
                selected: true,
                //
                // ignore: no-empty-block
                onDeleted: () {},
                showCheckmark: false,
              ),
              const InputChip(
                label: Text('No'),
                isEnabled: false,
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: <Widget>[
              ActionChip(
                label: const Text('Suggestion'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('I agree'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('LGTM'),
                //
                // ignore: no-empty-block
                onPressed: () {},
              ),
              const ActionChip(label: Text('Nope')),
            ],
          ),
        ],
      ),
    );
  }
}
