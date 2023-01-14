// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_extras.dart';

class SnackBarSection extends StatelessWidget {
  const SnackBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Snackbar',
      tooltipMessage: 'Use SnackBar to show snack bars',
      child: TextButton(
        onPressed: handlePressed(
          context,
          false,
          'A TextButton',
        ),
        child: const Text(
          'Show Snackbar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
