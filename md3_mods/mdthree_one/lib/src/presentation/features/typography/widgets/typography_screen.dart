// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mdthree_one/src/presentation/features/typography/widgets/text_style_example.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Expanded(
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 7),
          TextStyleExample(
            name: 'Display Large',
            style: textTheme.displayLarge!,
          ),
          TextStyleExample(
            name: 'Display Medium',
            style: textTheme.displayMedium!,
          ),
          TextStyleExample(
            name: 'Display Small',
            style: textTheme.displaySmall!,
          ),
          TextStyleExample(
            name: 'Headline Large',
            style: textTheme.headlineLarge!,
          ),
          TextStyleExample(
            name: 'Headline Medium',
            style: textTheme.headlineMedium!,
          ),
          TextStyleExample(
            name: 'Headline Small',
            style: textTheme.headlineSmall!,
          ),
          TextStyleExample(
            name: 'Title Large',
            style: textTheme.titleLarge!,
          ),
          TextStyleExample(
            name: 'Title Medium',
            style: textTheme.titleMedium!,
          ),
          TextStyleExample(
            name: 'Title Small',
            style: textTheme.titleSmall!,
          ),
          TextStyleExample(
            name: 'Label Large',
            style: textTheme.labelLarge!,
          ),
          TextStyleExample(
            name: 'Label Medium',
            style: textTheme.labelMedium!,
          ),
          TextStyleExample(
            name: 'Label Small',
            style: textTheme.labelSmall!,
          ),
          TextStyleExample(
            name: 'Body Large',
            style: textTheme.bodyLarge!,
          ),
          TextStyleExample(
            name: 'Body Medium',
            style: textTheme.bodyMedium!,
          ),
          TextStyleExample(
            name: 'Body Small',
            style: textTheme.bodySmall!,
          ),
        ].animate(interval: 600.ms,)
        .fadeIn(duration: 900.ms, delay: 300.ms,)
        .move(begin: const Offset(-16, 0,), curve: Curves.easeOutQuad,),
      ),
    );
  }
}
