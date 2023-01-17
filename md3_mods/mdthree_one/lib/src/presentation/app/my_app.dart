// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

// ignore_for_file: avoid_positional_boolean_parameters, avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mdthree_one/src/domain/stuff.dart';
import 'package:mdthree_one/src/presentation/app/widgets/destinations.dart';
import 'package:mdthree_one/src/presentation/app/widgets/navigation_transition.dart';
import 'package:mdthree_one/src/presentation/app/widgets/one_two_transition.dart';
import 'package:mdthree_one/src/presentation/features/color/widgets/color_palettes_screen.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/first_component_list.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/navigation_bars.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/second_component_list.dart';
import 'package:mdthree_one/src/presentation/features/elevation/widgets/elevation_screen.dart';
import 'package:mdthree_one/src/presentation/features/typography/widgets/typography_screen.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final AnimationController controller;
  late final CurvedAnimation railAnimation;
  bool controllerInitialized = false;
  bool showMediumSizeLayout = false;
  bool showLargeSizeLayout = false;
  bool useMaterial3 = true;
  bool useLightMode = true;
  ColorSeed colorSelected = ColorSeed.baseColor;
  int screenIndex = ScreenSelected.component.value;

  late ThemeData themeData;

  @override
  void initState() {
    super.initState();
    themeData = updateThemes(
      colorSelected.color,
      useMaterial3,
      useLightMode,
    );

    controller = AnimationController(
      value: 0,
      duration: Duration(
        milliseconds: transitionLength.toInt() * 2,
      ),
      vsync: this,
    );
    railAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(
        0.5,
        1.0,
      ),
    );
  }

  Widget _trailingActions() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(child: brightnessButton(showTooltipBelow: false)),
          Flexible(child: material3Button(showTooltipBelow: false)),
          Flexible(child: colorSeedButton(const Icon(Icons.more_horiz))),
        ],
      );

  //
  // ignore: long-method
  Widget _expandedTrailingActions() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        constraints: const BoxConstraints.tightFor(width: 250),
        // problem with flex rendering as we need a
        // scroll here to handle sizes where
        // content is hidden due to screen size
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text('Brightness'),
                const Spacer(),
                Switch(
                  value: useLightMode,
                  //
                  // ignore: prefer-extracting-callbacks
                  onChanged: (_) {
                    handleBrightnessChange();
                  },
                ),
              ],
            ),
            Row(
              children: [
                if (useMaterial3)
                  const Text('Material 3')
                else
                  const Text('Material 2'),
                const Spacer(),
                Switch(
                  value: useMaterial3,
                  //
                  // ignore: prefer-extracting-callbacks
                  onChanged: (_) {
                    handleMaterialVersionChange();
                  },
                ),
              ],
            ),
            const Divider(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 200.0,
              ),
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  ColorSeed.values.length,
                  (i) => IconButton(
                    color: ColorSeed.values[i].color,
                    //
                    // ignore: prefer-extracting-callbacks
                    onPressed: () {
                      handleColorSelect(i);
                    },
                    icon: const Icon(Icons.circle),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // All MediaQueries are inherited widget subtype calls thus didChangeDependencies
  // State object override is used here to actually act as lazy polling for
  // screen size changes. Or to put another way, the MediaQuery calls that
  // we care about in our Flutter App should be call and handled in the
  // shared scaffold at the override didChangeDependencies method call.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    final AnimationStatus status = controller.status;
    if (width > 1000) {
      if (width > 1500) {
        showMediumSizeLayout = false;
        showLargeSizeLayout = true;
      } else {
        showMediumSizeLayout = true;
        showLargeSizeLayout = false;
      }
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        controller.forward();
      }
    } else {
      showMediumSizeLayout = false;
      showLargeSizeLayout = false;
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      controller.value = width > 1000 ? 1 : 0;
    }
  }

  ThemeData updateThemes(
    Color colorSelected,
    bool useMaterial3,
    bool useLightMode,
  ) {
    return ThemeData(
      useMaterial3: useMaterial3,
      brightness: useLightMode ? Brightness.light : Brightness.dark,
      colorSchemeSeed: colorSelected,
    );
  }

  // setState indicates that framework should schedule a build for
  // the State object.
  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  // setState indicates that framework should schedule a build for
  // the State object.
  void handleBrightnessChange() {
    setState(() {
      useLightMode = !useLightMode;
      themeData = updateThemes(
        colorSelected.color,
        useMaterial3,
        useLightMode,
      );
    });
  }

  // setState indicates that framework should schedule a build for
  // the State object.
  void handleMaterialVersionChange() {
    setState(() {
      useMaterial3 = !useMaterial3;
      themeData = updateThemes(
        colorSelected.color,
        useMaterial3,
        useLightMode,
      );
    });
  }

  // setState indicates that framework should schedule a build for
  // the State object.
  void handleColorSelect(int value) {
    setState(() {
      colorSelected = ColorSeed.values[value];
      themeData = updateThemes(
        colorSelected.color,
        useMaterial3,
        useLightMode,
      );
    });
  }

  Widget createScreenFor(
    ScreenSelected screenSelected,
    bool showNavBarExample,
  ) {
    switch (screenSelected) {
      case ScreenSelected.component:
        return Expanded(
          child: OneTwoTransition(
            animation: railAnimation,
            one: FirstComponentList(
              showNavBottomBar: showNavBarExample,
              scaffoldKey: scaffoldKey,
              showSecondList: showMediumSizeLayout || showLargeSizeLayout,
            ),
            two: const SecondComponentList(),
          ),
        );
      case ScreenSelected.color:
        return const ColorPalettesScreen();
      case ScreenSelected.typography:
        return const TypographyScreen();
      case ScreenSelected.elevation:
        return const ElevationScreen();
      default:
        return FirstComponentList(
          showNavBottomBar: showNavBarExample,
          scaffoldKey: scaffoldKey,
          showSecondList: showMediumSizeLayout || showLargeSizeLayout,
        );
    }
  }

  Widget brightnessButton({bool showTooltipBelow = true}) => Tooltip(
        message: 'Toggle brightness',
        preferBelow: showTooltipBelow,
        child: IconButton(
          onPressed: handleBrightnessChange,
          icon: useLightMode
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.wb_sunny),
        ),
      );

  Widget material3Button({bool showTooltipBelow = true}) => Tooltip(
        message: 'Switch to Material ${useMaterial3 ? 2 : 3}',
        preferBelow: showTooltipBelow,
        child: IconButton(
          onPressed: handleMaterialVersionChange,
          icon: useMaterial3
              ? const Icon(Icons.filter_3)
              : const Icon(Icons.filter_2),
        ),
      );

  Widget colorSeedButton(Icon icon) => PopupMenuButton(
        //
        // ignore: prefer-extracting-callbacks
        itemBuilder: (context) {
          return List.generate(
            ColorSeed.values.length,
            //
            // ignore: prefer-extracting-callbacks
            (index) {
              final ColorSeed currentColor = ColorSeed.values[index];

              return PopupMenuItem(
                value: index,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        currentColor == colorSelected
                            ? Icons.color_lens
                            : Icons.color_lens_outlined,
                        color: currentColor.color,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(currentColor.label),
                    ),
                  ],
                ),
              );
            },
          );
        },
        onSelected: handleColorSelect,
        icon: icon,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      );

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: useMaterial3 ? const Text('Material 3').animate(onPlay: (controller) => controller.repeat())
              .shimmer(duration: 1200.ms, color: Theme.of(context).colorScheme.primary.withOpacity(0.65),)
              .animate()
              .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad,).slide() 
              : const Text('Material 2')
              .animate(onPlay: (controller) => controller.repeat())
              .shimmer(
                duration: 1200.ms,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.65),
              )
              .animate()
              .fadeIn(
                duration: 1200.ms,
                curve: Curves.easeOutQuad,
              )
              .slide(),
      actions: !showMediumSizeLayout && !showLargeSizeLayout
          ? [
              brightnessButton(),
              material3Button(),
              colorSeedButton(const Icon(Icons.more_vert)),
            ]
          : [Container()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // What is being animated as the child is the NavigationTransition
      home: AnimatedBuilder(
        animation: controller,
        builder: (
          context,
          child,
        ) {
          return NavigationTransition(
            scaffoldKey: scaffoldKey,
            animationController: controller,
            railAnimation: railAnimation,
            navigationRail: NavigationRail(
              extended: showLargeSizeLayout,
              // orginal had Expanded, but that is wrong as we want
              // the content to expand in loose fashion not tight as then
              // we never have to use a scrollview wrapper to account for
              // screen size changing to smaller height sizes.
              trailing: Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: showLargeSizeLayout
                      ? _expandedTrailingActions()
                      : _trailingActions(),
                ),
              ),
              destinations: navRailDestinations,
              selectedIndex: screenIndex,
              //
              // ignore: prefer-extracting-callbacks
              onDestinationSelected: (index) {
                setState(() {
                  screenIndex = index;
                  handleScreenChanged(screenIndex);
                });
              },
            ),
            navigationBar: NavigationBars(
              //
              // ignore: prefer-extracting-callbacks
              onSelectItem: (index) {
                setState(() {
                  screenIndex = index;
                  handleScreenChanged(screenIndex);
                });
              },
              selectedIndex: screenIndex,
              isExampleBar: false,
            ),
            appBar: createAppBar(),
            body: createScreenFor(
              ScreenSelected.values[screenIndex],
              controller.value == 1,
            ),
          );
        },
      ),
      title: 'Material 3',
      theme: themeData,
      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
