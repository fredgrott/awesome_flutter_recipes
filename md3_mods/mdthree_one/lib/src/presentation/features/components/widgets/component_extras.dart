// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';

//
// ignore: prefer-static-class
const rowDivider = SizedBox(width: 20);
//
// ignore: prefer-static-class
const colDivider = SizedBox(height: 10);
//
// ignore: prefer-static-class
const double cardWidth = 115;
//
// ignore: prefer-static-class
const double widthConstraint = 450;
//
// ignore: prefer-static-class
void Function()? handlePressed(
  BuildContext context,
  bool isDisabled,
  String buttonName,
) {
  return isDisabled
      ? null
      : () {
          final snackBar = SnackBar(
            content: Text(
              'Yay! $buttonName is clicked!',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            action: SnackBarAction(
              textColor: Theme.of(context).colorScheme.surface,
              label: 'Close',
              //
              // ignore: no-empty-block
              onPressed: () {},
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        };
}
