// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class FGBottomSheetSection extends StatefulWidget {
  @override
  State<FGBottomSheetSection> createState() => _FGBottomSheetSectionState();
}

class _FGBottomSheetSectionState extends State<FGBottomSheetSection> with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    // Initialize AnimationController
    initController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void initController() {
    controller = BottomSheet.createAnimationController(this);
    controller.duration = const Duration(milliseconds: 100);
    controller.reverseDuration = const Duration(milliseconds: 100);
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> buttonList = <Widget>[
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.share_outlined),
      ),
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.add),
      ),
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.delete_outline),
      ),
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.archive_outlined),
      ),
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.settings_outlined),
      ),
      IconButton(
        //
        // ignore: no-empty-block
        onPressed: () {},
        icon: const Icon(Icons.favorite_border),
      ),
    ];
    const List<Text> labelList = <Text>[
      Text('Share'),
      Text('Add to'),
      Text('Trash'),
      Text('Move to\n archive'),
      Text('Settings'),
      Text('Favorite'),
    ];

    buttonList = List.generate(
      buttonList.length,
      (index) => Padding(
        padding: const EdgeInsets.fromLTRB(
          20.0,
          30.0,
          20.0,
          20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buttonList[index],
            labelList[index],
          ],
        ),
      ),
    );

    return ComponentDecoration(
      label: 'Bottom sheet',
      tooltipMessage:
          'Use showModalBottomSheet<T> to show a modal bottom sheet',
      child: TextButton(
        //
        // ignore: prefer-extracting-callbacks
        onPressed: () {
          showModalBottomSheet<void>(
            context: context, 
            builder: (context) {
              return SizedBox(
                height: 250, 
                child: Column(
                  children: [
                    Expanded(
                      flex: 3, 
                      child: ListView(
                        scrollDirection: Axis.horizontal, 
                        children: buttonList,
                      ),
                    ), 
                    const Divider(
                      thickness: 2, 
                      indent: 20, 
                      endIndent: 20,
                    ), 
                    Expanded(
                      flex: 2, 
                      child: Center(
                        child: FilledButton.tonal(
                          onPressed: () => Navigator.pop(context), 
                          child: const Text('Close BottomSheet'),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            }, 
            transitionAnimationController: controller,
          ).whenComplete(() => initController());
        },
        child: const Text(
          'Show Modal bottom sheet',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}