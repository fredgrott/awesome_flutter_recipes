// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/presentation/features/elevations/widgets/elevation_grid.dart';

class ElevationScreen extends StatelessWidget {
  const ElevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color shadowColor = Theme.of(context).colorScheme.shadow;
    final Color surfaceTint = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 20,
                right: 16.0,
              ),
              child: Text(
                'Surface Tint Color Only',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          ElevationGrid(surfaceTintColor: surfaceTint),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                  right: 16.0,
                ),
                child: Text(
                  'Surface Tint Color and Shadow Color',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ]),
          ),
          ElevationGrid(
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTint,
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                  right: 16.0,
                ),
                child: Text(
                  'Shadow Color Only',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ]),
          ),
          ElevationGrid(shadowColor: shadowColor),
        ],
      ),
    );
  }
}
