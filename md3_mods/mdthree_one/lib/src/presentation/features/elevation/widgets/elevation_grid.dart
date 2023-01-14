// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/elevation/widgets/elevation_card.dart';
import 'package:mdthree_one/src/presentation/features/elevation/widgets/elevations.dart';

//
// ignore: prefer-static-class
const double narrowScreenWidthThreshold = 450;

class ElevationGrid extends StatelessWidget {
  const ElevationGrid({
    super.key,
    this.shadowColor,
    this.surfaceTintColor,
  });

  final Color? shadowColor;
  final Color? surfaceTintColor;

  List<ElevationCard> elevationCards(
    Color? shadowColor,
    Color? surfaceTintColor,
  ) {
    return elevations
        .map(
          (elevationInfo) => ElevationCard(
            info: elevationInfo,
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverLayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          return constraints.crossAxisExtent < narrowScreenWidthThreshold
              ? SliverGrid.count(
                  crossAxisCount: 3,
                  children: elevationCards(
                    shadowColor,
                    surfaceTintColor,
                  ),
                )
              : SliverGrid.count(
                  crossAxisCount: 6,
                  children: elevationCards(
                    shadowColor,
                    surfaceTintColor,
                  ),
                );
        },
      ),
    );
  }
}