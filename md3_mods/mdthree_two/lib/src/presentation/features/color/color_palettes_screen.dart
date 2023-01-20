// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mdthree_two/src/domain/entities/naked_entities.dart';
import 'package:mdthree_two/src/presentation/features/color/widgets/color_scheme_view.dart';


class ColorPalettesScreen extends StatelessWidget {
  const ColorPalettesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme selectedColorScheme = Theme.of(context).colorScheme;
    final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      colorScheme: selectedColorScheme,
    );
    final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      colorScheme: selectedColorScheme,
    );

    Widget schemeLabel(String brightness) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          brightness,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget schemeView(ThemeData theme) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ColorSchemeView(
          colorScheme: theme.colorScheme,
        ),
      );
    }

    return Expanded(
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          //
          // ignore: prefer-using-list-view
          return constraints.maxWidth < narrowScreenWidthThreshold
              // ignore: prefer-using-list-view
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      divider,
                      schemeLabel('Light Theme'),
                      schemeView(lightTheme),
                      divider,
                      divider,
                      schemeLabel('Dark Theme'),
                      schemeView(darkTheme),
                    ]
                        .animate(
                          interval: 600.ms,
                        )
                        .fadeIn(
                          duration: 900.ms,
                          delay: 300.ms,
                        )
                        .move(
                          begin: const Offset(
                            -16,
                            0,
                          ),
                          curve: Curves.easeOutQuad,
                        ),
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              schemeLabel('Light Theme'),
                              schemeView(lightTheme),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              schemeLabel('Dark Theme'),
                              schemeView(darkTheme),
                            ],
                          ),
                        ),
                      ]
                          .animate(
                            interval: 600.ms,
                          )
                          .fadeIn(
                            duration: 900.ms,
                            delay: 300.ms,
                          )
                          .move(
                            begin: const Offset(
                              -16,
                              0,
                            ),
                            curve: Curves.easeOutQuad,
                          ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
