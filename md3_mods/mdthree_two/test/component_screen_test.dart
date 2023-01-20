// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdthree_two/src/presentation/app/my_app.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/buttons.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/cards.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/icon_toggle_button.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/navigation_bars.dart';
import 'package:mdthree_two/src/presentation/features/components/widgets/radios.dart';

void main() {
  testWidgets(
    'Default main page shows all M3 components',
    (tester) async {
      widgetSetup(
        tester,
        800,
        windowHeight: 7000,
      );
      await tester.pumpWidget(MaterialApp(home: MyApp()));

      // Elements on the app bar
      expect(
        find.text('Material 3'),
        findsOneWidget,
      );
      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.wb_sunny_outlined,
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.filter_3,
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.more_vert,
        ),
        findsOneWidget,
      );

      // Elements on the component screen
      // Buttons
      expect(
        find.widgetWithText(
          ElevatedButton,
          'Elevated',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          FilledButton,
          'Filled',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          FilledButton,
          'Filled Tonal',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          OutlinedButton,
          'Outlined',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          TextButton,
          'Text',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          Buttons,
          'Icon',
        ),
        findsNWidgets(5),
      );

      // IconButtons
      expect(
        find.byType(IconToggleButton),
        findsNWidgets(8),
      );

      // FABs
      expect(
        find.byType(FloatingActionButton),
        findsNWidgets(6),
      ); // 2 more shows up in the bottom app bar.
      expect(
        find.widgetWithText(
          FloatingActionButton,
          'Create',
        ),
        findsOneWidget,
      );

      // Chips
      expect(
        find.byType(ActionChip),
        findsNWidgets(7),
      ); // includes Assist and Suggestion chip.
      expect(
        find.byType(FilterChip),
        findsNWidgets(3),
      );
      expect(
        find.byType(InputChip),
        findsNWidgets(4),
      );

      // Cards
      expect(
        find.widgetWithText(
          Cards,
          'Elevated',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          Cards,
          'Filled',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          Cards,
          'Outlined',
        ),
        findsOneWidget,
      );

      // TextFields
      expect(
        find.widgetWithText(
          TextField,
          'Disabled',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          TextField,
          'Filled',
        ),
        findsNWidgets(2),
      );
      expect(
        find.widgetWithText(
          TextField,
          'Outlined',
        ),
        findsNWidgets(2),
      );

      // Alert Dialog
      final Finder dialogExample = find.widgetWithText(
        TextButton,
        'Open Dialog',
      );
      expect(
        dialogExample,
        findsOneWidget,
      );

      // Switches
      final Finder switchExample = find.byType(Switch);
      expect(
        switchExample,
        findsNWidgets(4),
      );

      // Checkboxes
      final Finder checkboxExample = find.byType(Checkbox);
      expect(
        checkboxExample,
        findsNWidgets(8),
      );

      // Radios
      final Finder radioExample = find.byType(Radio<Value>);
      expect(
        radioExample,
        findsNWidgets(2),
      );

      // ProgressIndicator
      final Finder circularProgressIndicator =
          find.byType(CircularProgressIndicator);
      expect(
        circularProgressIndicator,
        findsOneWidget,
      );
      final Finder linearProgressIndicator =
          find.byType(LinearProgressIndicator);
      expect(
        linearProgressIndicator,
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "NavigationRail doesn't show when width value is small than 1000 "
    '(in Portrait mode or narrow screen)',
    (tester) async {
      widgetSetup(
        tester,
        999,
        windowHeight: 7000,
      );
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      await tester.pumpAndSettle();

      // When screen width is less than 1000, NavigationBar will show. At the same
      // time, the NavigationBar example still show up in the navigation group.
      expect(
        find.byType(NavigationBars),
        findsNWidgets(3),
      ); // The real navBar, badges example and navBar example
      expect(
        find.widgetWithText(
          NavigationBar,
          'Components',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Color',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Typography',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Elevation',
        ),
        findsOneWidget,
      );

      expect(
        find.widgetWithText(
          NavigationBar,
          'Explore',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Pets',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Account',
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'NavigationRail shows when width value is greater than or equal '
    'to 1000 (in Landscape mode or wider screen)',
    (tester) async {
      widgetSetup(
        tester,
        1001,
        windowHeight: 3000,
      );
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      await tester.pumpAndSettle();

      // When screen width is greater than or equal to 1000, NavigationRail will show.
      // At the same time, the NavigationBar will NOT show.
      expect(
        find.byType(NavigationRail),
        findsOneWidget,
      );
      expect(
        find.byType(
          Tooltip,
          skipOffstage: false,
        ),
        findsWidgets,
      );
      expect(
        find.widgetWithText(
          NavigationRail,
          'Components',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationRail,
          'Color',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationRail,
          'Typography',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationRail,
          'Elevation',
        ),
        findsOneWidget,
      );

      expect(
        find.widgetWithText(
          NavigationBar,
          'Explore',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Pets',
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          NavigationBar,
          'Account',
        ),
        findsOneWidget,
      );

      // the Navigation bar should be out of screen.
      // ignore: prefer-correct-identifier-length
      final RenderBox box = tester.renderObject(
        find.widgetWithText(
          NavigationBar,
          'Components',
        ),
      );
      expect(
        box.localToGlobal(Offset.zero),
        const Offset(
          0.0,
          3080.0,
        ),
      );
    },
  );

  testWidgets(
    'Material version switches between Material3 and Material2 when '
    'the version icon is clicked',
    (tester) async {
      widgetSetup(
        tester,
        450,
        windowHeight: 7000,
      );
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      final BuildContext defaultElevatedButton =
          tester.firstElement(find.byType(ElevatedButton));
      final BuildContext defaultIconButton =
          tester.firstElement(find.byType(IconButton));
      final BuildContext defaultFAB =
          tester.firstElement(find.byType(FloatingActionButton));
      final BuildContext defaultCard = tester.firstElement(
        find.widgetWithText(
          Card,
          'Elevated',
        ),
      );
      final BuildContext defaultChip = tester.firstElement(
        find.widgetWithText(
          ActionChip,
          'Assist',
        ),
      );
      final Finder dialog = find.text('Open Dialog');
      await tester.tap(dialog);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext defaultAlertDialog =
          tester.element(find.byType(AlertDialog));
      expect(
        Theme.of(defaultAlertDialog).useMaterial3,
        true,
      );
      final Finder dismiss = find.text('Dismiss');
      await tester.tap(dismiss);
      await tester.pumpAndSettle(const Duration(microseconds: 500));

      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.filter_3,
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.filter_2,
        ),
        findsNothing,
      );
      expect(
        find.text('Material 3'),
        findsOneWidget,
      );
      expect(
        Theme.of(defaultElevatedButton).useMaterial3,
        true,
      );
      expect(
        Theme.of(defaultIconButton).useMaterial3,
        true,
      );
      expect(
        Theme.of(defaultFAB).useMaterial3,
        true,
      );
      expect(
        Theme.of(defaultCard).useMaterial3,
        true,
      );
      expect(
        Theme.of(defaultChip).useMaterial3,
        true,
      );

      final Finder appbarM3Icon = find.descendant(
        of: find.byType(AppBar),
        matching: find.widgetWithIcon(
          IconButton,
          Icons.filter_3,
        ),
      );
      await tester.tap(appbarM3Icon);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext updatedElevatedButton =
          tester.firstElement(find.byType(ElevatedButton));
      final BuildContext updatedIconButton =
          tester.firstElement(find.byType(IconButton));
      final BuildContext updatedFAB =
          tester.firstElement(find.byType(FloatingActionButton));
      final BuildContext updatedCard = tester.firstElement(find.byType(Card));
      final BuildContext updatedChip = tester.firstElement(
        find.widgetWithText(
          ActionChip,
          'Assist',
        ),
      );
      final Finder updatedDialog = find.text('Open Dialog');
      await tester.tap(updatedDialog);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext updatedAlertDialog =
          tester.firstElement(find.byType(AlertDialog));
      expect(
        Theme.of(updatedAlertDialog).useMaterial3,
        false,
      );
      final Finder updatedDismiss = find.text('Dismiss');
      await tester.tap(updatedDismiss);
      await tester.pumpAndSettle(const Duration(microseconds: 500));

      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.filter_2,
        ),
        findsOneWidget,
      );
      expect(
        find.widgetWithIcon(
          AppBar,
          Icons.filter_3,
        ),
        findsNothing,
      );
      expect(
        find.text('Material 2'),
        findsOneWidget,
      );
      expect(
        Theme.of(updatedElevatedButton).useMaterial3,
        false,
      );
      expect(
        Theme.of(updatedIconButton).useMaterial3,
        false,
      );
      expect(
        Theme.of(updatedFAB).useMaterial3,
        false,
      );
      expect(
        Theme.of(updatedCard).useMaterial3,
        false,
      );
      expect(
        Theme.of(updatedChip).useMaterial3,
        false,
      );
    },
  );

  testWidgets(
    'Other screens become Material2 mode after changing mode from '
    'main screen',
    (tester) async {
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      final Finder appbarM3Icon = find.descendant(
        of: find.byType(AppBar),
        matching: find.widgetWithIcon(
          IconButton,
          Icons.filter_3,
        ),
      );
      await tester.tap(appbarM3Icon);
      final Finder secondScreenIcon = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.format_paint_outlined,
        ),
      );
      await tester.tap(secondScreenIcon);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext lightThemeText =
          tester.element(find.text('Light Theme'));
      expect(
        Theme.of(lightThemeText).useMaterial3,
        false,
      );
      final Finder thirdScreenIcon = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.text_snippet_outlined,
        ),
      );
      await tester.tap(thirdScreenIcon);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext displayLargeText =
          tester.element(find.text('Display Large'));
      expect(
        Theme.of(displayLargeText).useMaterial3,
        false,
      );
      final Finder fourthScreenIcon = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.invert_colors_on_outlined,
        ),
      );
      await tester.tap(fourthScreenIcon);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      final BuildContext material = tester.firstElement(find.byType(Material));
      expect(
        Theme.of(material).useMaterial3,
        false,
      );
    },
  );

  testWidgets(
    'Brightness mode switches between dark and light when '
    'the brightness icon is clicked',
    (tester) async {
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      final Finder lightIcon = find.descendant(
        of: find.byType(AppBar),
        matching: find.widgetWithIcon(
          IconButton,
          Icons.wb_sunny_outlined,
        ),
      );
      final Finder darkIcon = find.descendant(
        of: find.byType(AppBar),
        matching: find.widgetWithIcon(
          IconButton,
          Icons.wb_sunny,
        ),
      );
      final BuildContext appBar = tester.element(find.byType(AppBar).first);
      final BuildContext body =
          tester.firstElement(find.byType(Scaffold).first);
      final BuildContext navigationRail = tester.element(
        find.widgetWithIcon(
          NavigationRail,
          Icons.format_paint_outlined,
        ),
      );
      expect(
        lightIcon,
        findsOneWidget,
      );
      expect(
        darkIcon,
        findsNothing,
      );
      expect(
        Theme.of(appBar).brightness,
        Brightness.light,
      );
      expect(
        Theme.of(body).brightness,
        Brightness.light,
      );
      expect(
        Theme.of(navigationRail).brightness,
        Brightness.light,
      );
      await tester.tap(lightIcon);
      await tester.pumpAndSettle(const Duration(microseconds: 500));

      final BuildContext appBar2 = tester.element(find.byType(AppBar).first);
      final BuildContext body2 = tester.element(find.byType(Scaffold).first);
      final BuildContext navigationRail2 =
          tester.element(find.byType(NavigationRail));
      expect(
        lightIcon,
        findsNothing,
      );
      expect(
        darkIcon,
        findsOneWidget,
      );
      expect(
        Theme.of(appBar2).brightness,
        Brightness.dark,
      );
      expect(
        Theme.of(body2).brightness,
        Brightness.dark,
      );
      expect(
        Theme.of(navigationRail2).brightness,
        Brightness.dark,
      );
    },
  );

  testWidgets(
    'Color theme changes when a color is selected from menu',
    (tester) async {
      const Color m3BaseColor = Color(0xff6750a4);
      await tester.pumpWidget(Container());
      await tester.pumpWidget(MaterialApp(home: MyApp()));
      await tester.pump();
      final Finder menuIcon = find.descendant(
        of: find.byType(AppBar),
        matching: find.widgetWithIcon(
          IconButton,
          Icons.more_vert,
        ),
      );
      final BuildContext appBar = tester.element(find.byType(AppBar).first);
      final BuildContext body = tester.element(find.byType(Scaffold).first);
      final BuildContext navigationRail =
          tester.element(find.byType(NavigationRail));

      expect(
        Theme.of(appBar).primaryColor,
        m3BaseColor,
      );
      expect(
        Theme.of(body).primaryColor,
        m3BaseColor,
      );
      expect(
        Theme.of(navigationRail).primaryColor,
        m3BaseColor,
      );
      await tester.tap(menuIcon);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Blue').last);
      await tester.pumpAndSettle();

      final BuildContext appBar2 = tester.element(find.byType(AppBar).first);
      final BuildContext body2 = tester.element(find.byType(Scaffold).first);
      final BuildContext navigationRail2 =
          tester.element(find.byType(NavigationRail));
      final ThemeData expectedTheme = ThemeData(colorSchemeSeed: Colors.blue);
      expect(
        Theme.of(appBar2).primaryColor,
        expectedTheme.primaryColor,
      );
      expect(
        Theme.of(body2).primaryColor,
        expectedTheme.primaryColor,
      );
      expect(
        Theme.of(navigationRail2).primaryColor,
        expectedTheme.primaryColor,
      );
    },
  );
}

// ignore: prefer-static-class
void widgetSetup(
  WidgetTester tester,
  double windowWidth, {
  double? windowHeight,
}) {
  final height = windowHeight ?? 846;
  tester.binding.window.devicePixelRatioTestValue = 2;
  // ignore: prefer-correct-identifier-length
  final dpi = tester.binding.window.devicePixelRatio;
  tester.binding.window.physicalSizeTestValue = Size(
    windowWidth * dpi,
    height * dpi,
  );
}
