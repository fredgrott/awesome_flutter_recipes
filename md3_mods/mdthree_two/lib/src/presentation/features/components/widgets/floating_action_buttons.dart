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

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Floating action buttons',
      tooltipMessage:
          'Floating action buttons include: \nFloatingActionButton.small, FloatingActionButton, FloatingActionButton.extended, and FloatingActionButton.large',
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          final double screenWidth = MediaQuery.of(context).size.width;

          return screenWidth < 375.0
              ? Column(
                  children: [
                    // Got RenderFlex errors, problem solution might be
                    // adding mainAxisSize: MainAxisSize.min to Rows
                    // and wrappping itmes like Text in Flexibilie
                    // Widgets.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Center(
                            child: FloatingActionButton.small(
                              //
                              // ignore: no-empty-block
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: FloatingActionButton.extended(
                              //
                              // ignore: no-empty-block
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Flexible(
                                child: Text('Create'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    colDivider,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Center(
                            child: FloatingActionButton(
                              //
                              // ignore: no-empty-block
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: FloatingActionButton.large(
                              //
                              // ignore: no-empty-block
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                // renderflex overflows so wrapped wtih Expanded
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: FloatingActionButton.small(
                      //
                      // ignore: no-empty-block
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                    Expanded(child: FloatingActionButton(
                        //
                        // ignore: no-empty-block
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                    Expanded(child: FloatingActionButton.extended(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Flexible(
                        child: Text('Create'),
                      ),
                    ),),
                    Expanded(child: FloatingActionButton.large(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),),
                  ],
                );
        },
      ),
    );
  }
}
