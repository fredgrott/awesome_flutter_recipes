// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';

class NavigationDrawerSection extends StatefulWidget {
  const NavigationDrawerSection({super.key});

  @override
  State<NavigationDrawerSection> createState() =>
      _NavigationDrawerSectionState();
}

class _NavigationDrawerSectionState extends State<NavigationDrawerSection> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      //
      // ignore: prefer-extracting-callbacks
      onDestinationSelected: (selectedIndex) {
        setState(() {
          navDrawerIndex = selectedIndex;
        });
      },
      selectedIndex: navDrawerIndex,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(
            28,
            16,
            16,
            10,
          ),
          child: Text(
            'Mail',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...destinations.map((destination) {
          return NavigationDrawerDestination(
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
            label: Text(destination.label),
          );
        }),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            28,
            16,
            16,
            10,
          ),
          child: Text(
            'Labels',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...labelDestinations.map((destination) {
          return NavigationDrawerDestination(
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
            label: Text(destination.label),
          );
        }),
      ],
    );
  }
}

class ExampleDestination {
  final String label;
  final Widget icon;
  final Widget selectedIcon;

  const ExampleDestination(
    this.label,
    this.icon,
    this.selectedIcon,
  );
}

//
// ignore: prefer-static-class
const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination(
    'Inbox',
    Icon(Icons.inbox_outlined),
    Icon(Icons.inbox),
  ),
  ExampleDestination(
    'Outbox',
    Icon(Icons.send_outlined),
    Icon(Icons.send),
  ),
  ExampleDestination(
    'Favorites',
    Icon(Icons.favorite_outline),
    Icon(Icons.favorite),
  ),
  ExampleDestination(
    'Trash',
    Icon(Icons.delete_outline),
    Icon(Icons.delete),
  ),
];
//
// ignore: prefer-static-class
const List<ExampleDestination> labelDestinations = <ExampleDestination>[
  ExampleDestination(
    'Family',
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark),
  ),
  ExampleDestination(
    'School',
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark),
  ),
  ExampleDestination(
    'Work',
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark),
  ),
];
