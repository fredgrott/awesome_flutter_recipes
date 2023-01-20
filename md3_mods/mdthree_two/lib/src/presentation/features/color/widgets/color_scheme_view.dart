// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/domain/entities/naked_entities.dart';
import 'package:mdthree_two/src/presentation/features/color/widgets/color_chip.dart';
import 'package:mdthree_two/src/presentation/features/color/widgets/color_group.dart';

class ColorSchemeView extends StatelessWidget {
  const ColorSchemeView({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.primary,
              label: 'primary',
              onColor: colorScheme.onPrimary,
            ),
            ColorChip(
              color: colorScheme.onPrimary,
              label: 'onPrimary',
              onColor: colorScheme.primary,
            ),
            ColorChip(
              color: colorScheme.primaryContainer,
              label: 'primaryContainer',
              onColor: colorScheme.onPrimaryContainer,
            ),
            ColorChip(
              color: colorScheme.onPrimaryContainer,
              label: 'onPrimaryContainer',
              onColor: colorScheme.primaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.secondary,
              label: 'secondary',
              onColor: colorScheme.onSecondary,
            ),
            ColorChip(
              color: colorScheme.onSecondary,
              label: 'onSecondary',
              onColor: colorScheme.secondary,
            ),
            ColorChip(
              color: colorScheme.secondaryContainer,
              label: 'secondaryContainer',
              onColor: colorScheme.onSecondaryContainer,
            ),
            ColorChip(
              color: colorScheme.onSecondaryContainer,
              label: 'onSecondaryContainer',
              onColor: colorScheme.secondaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.tertiary,
              label: 'tertiary',
              onColor: colorScheme.onTertiary,
            ),
            ColorChip(
              color: colorScheme.onTertiary,
              label: 'onTertiary',
              onColor: colorScheme.tertiary,
            ),
            ColorChip(
              color: colorScheme.tertiaryContainer,
              label: 'tertiaryContainer',
              onColor: colorScheme.onTertiaryContainer,
            ),
            ColorChip(
              color: colorScheme.onTertiaryContainer,
              label: 'onTertiaryContainer',
              onColor: colorScheme.tertiaryContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.error,
              label: 'error',
              onColor: colorScheme.onError,
            ),
            ColorChip(
              color: colorScheme.onError,
              label: 'onError',
              onColor: colorScheme.error,
            ),
            ColorChip(
              color: colorScheme.errorContainer,
              label: 'errorContainer',
              onColor: colorScheme.onErrorContainer,
            ),
            ColorChip(
              color: colorScheme.onErrorContainer,
              label: 'onErrorContainer',
              onColor: colorScheme.errorContainer,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.background,
              label: 'background',
              onColor: colorScheme.onBackground,
            ),
            ColorChip(
              color: colorScheme.onBackground,
              label: 'onBackground',
              onColor: colorScheme.background,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.surface,
              label: 'surface',
              onColor: colorScheme.onSurface,
            ),
            ColorChip(
              color: colorScheme.onSurface,
              label: 'onSurface',
              onColor: colorScheme.surface,
            ),
            ColorChip(
              color: colorScheme.surfaceVariant,
              label: 'surfaceVariant',
              onColor: colorScheme.onSurfaceVariant,
            ),
            ColorChip(
              color: colorScheme.onSurfaceVariant,
              label: 'onSurfaceVariant',
              onColor: colorScheme.surfaceVariant,
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            ColorChip(
              color: colorScheme.outline,
              label: 'outline',
            ),
            ColorChip(
              color: colorScheme.shadow,
              label: 'shadow',
            ),
            ColorChip(
              color: colorScheme.inverseSurface,
              label: 'inverseSurface',
              onColor: colorScheme.onInverseSurface,
            ),
            ColorChip(
              color: colorScheme.onInverseSurface,
              label: 'onInverseSurface',
              onColor: colorScheme.inverseSurface,
            ),
            ColorChip(
              color: colorScheme.inversePrimary,
              label: 'inversePrimary',
              onColor: colorScheme.primary,
            ),
          ],
        ),
      ],
    );
  }
}
