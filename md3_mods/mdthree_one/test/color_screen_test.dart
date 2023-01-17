// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdthree_one/src/presentation/app/my_app.dart';
import 'package:mdthree_one/src/presentation/features/color/widgets/color_group.dart';
import 'package:mdthree_one/src/presentation/features/color/widgets/color_palettes_screen.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
    'Color palettes screen shows correctly when color icon is clicked '
    'on NavigationBar',
    (tester) async {
      widgetSetup(
        tester,
        449,
      );
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      await tester.pumpWidget(MaterialApp(home: MyApp()));

      expect(
        find.text('Light Theme'),
        findsNothing,
      );
      expect(
        find.text('Dark Theme'),
        findsNothing,
      );
      expect(
        find.byType(NavigationBar),
        findsOneWidget,
      );
      final Finder colorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.format_paint_outlined,
        ),
      );
      expect(
        colorIconOnBar,
        findsOneWidget,
      );
      await tester.tap(colorIconOnBar);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(
        colorIconOnBar,
        findsNothing,
      );

      final Finder selectedColorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.format_paint,
        ),
      );
      expect(
        selectedColorIconOnBar,
        findsOneWidget,
      );
      expect(
        find.text('Light Theme'),
        findsOneWidget,
      );
      expect(
        find.text('Dark Theme'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Color palettes screen shows correctly when color icon is clicked '
    'on NavigationRail',
    (tester) async {
      widgetSetup(
        tester,
        1200,
      ); // NavigationRail shows only when width is > 1000.
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      await tester.pumpAndSettle();
      expect(
        find.text('Light Theme'),
        findsNothing,
      );
      expect(
        find.text('Dark Theme'),
        findsNothing,
      );
      expect(
        find.byType(NavigationRail),
        findsOneWidget,
      );
      final Finder colorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint_outlined),
      );
      expect(
        colorIconOnRail,
        findsOneWidget,
      );
      await tester.tap(colorIconOnRail);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(
        colorIconOnRail,
        findsNothing,
      );
      final Finder selectedColorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint),
      );
      expect(
        selectedColorIconOnRail,
        findsOneWidget,
      );
      expect(
        find.text('Light Theme'),
        findsOneWidget,
      );
      expect(
        find.text('Dark Theme'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Color screen shows correct content',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Row(children: const [ColorPalettesScreen()])),
        ),
      );
      expect(
        find.text('Light Theme'),
        findsOneWidget,
      );
      expect(
        find.text('Dark Theme'),
        findsOneWidget,
      );
      expect(
        find.byType(
          ColorGroup,
          skipOffstage: false,
        ),
        findsNWidgets(14),
      );
    },
  );
}
