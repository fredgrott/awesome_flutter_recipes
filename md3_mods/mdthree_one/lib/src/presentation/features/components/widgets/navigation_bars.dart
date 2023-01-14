// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/nav_destinations.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({
    super.key,
    this.onSelectItem,
    required this.selectedIndex,
    required this.isExampleBar,
    this.isBadgeExample,
  });

  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isExampleBar;
  final bool? isBadgeExample;

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(covariant NavigationBars oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      selectedIndex = widget.selectedIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isBadgeExample = widget.isBadgeExample ?? false;
    Widget navigationBar = NavigationBar(
      selectedIndex: selectedIndex,
      //
      // ignore: avoid-nested-conditional-expressions
      destinations: widget.isExampleBar && isBadgeExample
          ? barWithBadgeDestinations
          // ignore: avoid-nested-conditional-expressions
          : widget.isExampleBar
              ? exampleBarDestinations
              : appBarDestinations,
      //
      // ignore: prefer-extracting-callbacks
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
        if (!widget.isExampleBar) widget.onSelectItem!(index);
      },
    );

    if (widget.isExampleBar && isBadgeExample) {
      navigationBar = ComponentDecoration(
        label: 'Badges',
        tooltipMessage: 'Use Badge or Badge.count to show badges',
        child: navigationBar,
      );
    } else if (widget.isExampleBar) {
      navigationBar = ComponentDecoration(
        label: 'Navigation bar',
        tooltipMessage: 'Use NavigationBar to show navigation bars',
        child: navigationBar,
      );
    }

    return navigationBar;
  }
}
