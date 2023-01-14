// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:material_responsive_comp/domain/adaptive_container.dart';
import 'package:material_responsive_comp/presentation/demo_selector.dart';
import 'package:sized_context/sized_context.dart';

class AdaptiveContainerExample extends StatelessWidget {
  const AdaptiveContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DemoSelector(),),
          ), 
          icon: const Icon(Icons.arrow_back),),
      ),
      body: Column(
        children: [
          AdaptiveContainer(
            color: Colors.red, 
            constraints: const AdaptiveConstraints.xsmall(), 
            child: Text('This is an extra small window, width: ${context.widthPx} ',),),
          AdaptiveContainer(
            color: Colors.orange, 
            constraints: const AdaptiveConstraints.small(), 
            child: Text('This is a small window, width: ${context.widthPx}',),),
          AdaptiveContainer(
            color: Colors.yellow, 
            constraints: const AdaptiveConstraints.medium(), 
            child: Text('This is a medium window, width: ${context.widthPx}',),),
          AdaptiveContainer(
            color: Colors.green, 
            constraints: const AdaptiveConstraints.large(), 
            child: Text('This is a large window, width: ${context.widthPx}',),),
          AdaptiveContainer(
            color: Colors.blue, 
            constraints: const AdaptiveConstraints.xlarge(), 
            child: Text('This is an extra large window, width: ${context.widthPx}',),),
          AdaptiveContainer(
            color: Colors.indigo, 
            constraints: const AdaptiveConstraints(xsmall: true, small: true, medium: false, large: false, xlarge: false,), 
            child: Text('This is a small or extra small window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.pink, 
            constraints: const AdaptiveConstraints(xsmall: false, small: false, medium: true, large: true, xlarge: true,), 
            child: Text('This is a medium, large, or extra large window, width: ${context.widthPx}'),),
        ],
      ),
    );
  }
}
