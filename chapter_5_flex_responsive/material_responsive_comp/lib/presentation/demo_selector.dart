// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_responsive_comp/presentation/adaptive_columns_example.dart';
import 'package:material_responsive_comp/presentation/adaptive_container_example.dart';

class DemoSelector extends StatelessWidget {
  const DemoSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              //
              // ignore: prefer-extracting-callbacks
              onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                return const AdaptiveColumnsExample();},),);}, 
              child: const Text('Adaptive Column'),),
              //
            // ignore: prefer-extracting-callbacks
            ElevatedButton(onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
              return const AdaptiveContainerExample();},),);}, child: const Text('Adaptive Container'),),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
