// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:mdthree_one/src/presentation/features/components/widgets/component_decoration.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Text Fields',
      tooltipMessage:
          'Use TextField with different decoration to show text fields',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Filled',
                helperText: 'supporting text',
                hintText: 'hint text',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Filled',
                        helperText: 'supporting text',
                        hintText: 'hint text',
                        errorText: 'error text',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Disabled',
                        helperText: 'supporting text',
                        hintText: 'hint text',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        filled: true,
                      ),
                      enabled: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Outlined',
                helperText: 'supporting text',
                hintText: 'hint text',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Outlined',
                        helperText: 'supporting text',
                        hintText: 'hint text',
                        errorText: 'error text',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Disabled',
                        helperText: 'supporting text',
                        hintText: 'hint text',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
