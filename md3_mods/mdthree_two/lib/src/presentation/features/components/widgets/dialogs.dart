// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_decoration.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void openDialog(BuildContext context) {
    // Original was showDialog, but we can switch this to showModal from
    // the animations package in order to add MD3 container animations.

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Basic Dialog Title'),
        content: const Text(
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Dismiss'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Action'),
          ),
        ],
      ),
      animationType: DialogTransitionType.rotate3D,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(seconds: 1),
    );

    //showModal(
    //context: context,
    //configuration: const FadeScaleTransitionConfiguration(),
    // builder: (BuildContext context) => AlertDialog(
    //  title: const Text('Basic Dialog Title'),
    //   content: const Text(
    //    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
    //   ),
    //   actions: <Widget>[
    //     TextButton(
    //       onPressed: () => Navigator.of(context).pop(),
    //       child: const Text('Dismiss'),
    //     ),
    //     TextButton(
    //       onPressed: () => Navigator.of(context).pop(),
    //       child: const Text('Action'),
    //    ),
    //  ],
    // ),
    //);

    //showDialog<void>(
    //context: context,
    //builder: (context) => AlertDialog(
    //title: const Text('Basic Dialog Title'),
    // content: const Text(
    //  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
    //),
    //actions: <Widget>[
    //   TextButton(
    //     onPressed: () => Navigator.of(context).pop(),
    //     child: const Text('Dismiss'),
    //   ),
    //   TextButton(
    //    onPressed: () => Navigator.of(context).pop(),
    //    child: const Text('Action'),
    //  ),
    // ],
    // ),
    //);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ComponentDecoration(
        label: 'Dialog',
        tooltipMessage: 'Use AlertDialog to show dialogs',
        child: UnconstrainedBox(
          child: TextButton(
            onPressed: () => openDialog(context),
            child: const Text(
              'Open Dialog',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
