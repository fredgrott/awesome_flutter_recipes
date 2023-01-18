// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:auto_animated/auto_animated.dart';
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

  //List<ElevationCard> elevationCards(
    //Color? shadowColor,
    //Color? surfaceTintColor,
  //) {
   // return elevations
      //  .map(
      //    (elevationInfo) => ElevationCard(
      //      info: elevationInfo,
      //      shadowColor: shadowColor,
     //       surfaceTint: surfaceTintColor,
    //      ),
    //    )
   //     .toList();
  //}

  Widget elevationGridItem(
    BuildContext context,
    int index,
    Animation<double> animation,
    List<ElevationInfo> card,
  ) =>
      FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.1,),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
          ),
          child: ElevationCard(
            info: card[index],
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverLayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          return constraints.crossAxisExtent < narrowScreenWidthThreshold
              ? LiveSliverGrid(
                itemBuilder: (context, index, animation,) {
                  return elevationGridItem(context, index, animation, elevations,);
                }, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ), 
                  itemCount: 6, 
                  controller: scrollController, 
                  visibleFraction: 0.001, 
                  showItemInterval: const Duration(milliseconds: 150), 
                  showItemDuration: const Duration(milliseconds: 750),
                ): LiveSliverGrid(
                    itemBuilder: (context, index, animation,) {
                      return elevationGridItem(context, index, animation, elevations,);
                    }, 
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                    ),
                    itemCount: 6, 
                    controller: scrollController, 
                    visibleFraction: 0.001, 
                    showItemInterval: const Duration(milliseconds: 150), 
                    showItemDuration: const Duration(milliseconds: 750),

                );
              
             // SliverGrid.count(
               //   crossAxisCount: 3,
               //   children: elevationCards(
               //     shadowColor,
               //     surfaceTintColor,
               //   ),
               // )
             // : SliverGrid.count(
              //    crossAxisCount: 6,
             //     children: elevationCards(
             //       shadowColor,
             //       surfaceTintColor,
               //   ),
              //  );
        },
      ),
    );
  }
}
