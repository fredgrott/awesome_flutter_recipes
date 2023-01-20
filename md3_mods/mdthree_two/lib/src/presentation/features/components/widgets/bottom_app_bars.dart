// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/component_decoration.dart';

class BottomAppBars extends StatelessWidget {
  const BottomAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Bottom app bar',
      tooltipMessage: 'Use BottomAppBar to show bottom app bars below',
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                //
                // ignore: no-empty-block
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endContained,
              bottomNavigationBar: BottomAppBar(
                elevation: 0.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      //
                      // ignore: prefer-extracting-callbacks
                      onPressed: () {
                        final SnackBar snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            //
                            // ignore: no-empty-block
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      tooltip: 'Open popup menu',
                      icon: const Icon(Icons.more_vert),
                    ),
                    IconButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 80,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                elevation: 0.0,
                //
                // ignore: no-empty-block
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endContained,
              bottomNavigationBar: BottomAppBar(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      //
                      // ignore: prefer-extracting-callbacks
                      onPressed: () {
                        final SnackBar snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            //
                            // ignore: no-empty-block
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      tooltip: 'Open popup menu',
                      icon: const Icon(Icons.more_vert),
                    ),
                    IconButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      //
                      // ignore: no-empty-block
                      onPressed: () {},
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
