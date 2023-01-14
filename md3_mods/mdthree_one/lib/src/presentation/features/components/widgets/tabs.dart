// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

// ignore_for_file: avoid_redundant_argument_values, use_named_constants

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Tabs',
      tooltipMessage: 'Use TabBar to show tabs',
      child: SizedBox(
        height: 80,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: const <Widget>[
                Tab(
                  text: 'Video', icon: Icon(Icons.videocam_outlined),
                  //
                  // ignore: prefer-correct-edge-insets-constructor
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  text: 'Photos', icon: Icon(Icons.photo_outlined),
                  //
                  // ignore: prefer-correct-edge-insets-constructor
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  text: 'Audio', icon: Icon(Icons.audiotrack_sharp),
                  //
                  // ignore: prefer-correct-edge-insets-constructor
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
