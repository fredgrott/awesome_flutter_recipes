// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:material_responsive_comp/domain/adaptive_column.dart';
import 'package:material_responsive_comp/domain/adaptive_container.dart';
import 'package:material_responsive_comp/presentation/demo_selector.dart';
import 'package:sized_context/sized_context.dart';

class AdaptiveColumnsExample extends StatelessWidget {
  const AdaptiveColumnsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DemoSelector(),
            ),
          ), 
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            color: Colors.red, 
            constraints: const AdaptiveConstraints.xsmall(), 
            columnSpan: 2, 
            child: Text('This is an extra small window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.orange, 
            constraints: const AdaptiveConstraints.small(), 
            columnSpan: 2, 
            child: Text('This is a small window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.yellow, 
            constraints: const AdaptiveConstraints.medium(), 
            columnSpan: 2, 
            child: Text('This is a medium window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.green, 
            constraints: const AdaptiveConstraints.large(), 
            columnSpan: 2, 
            child: Text('This is a large window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.blue, 
            constraints: const AdaptiveConstraints.xlarge(), 
            columnSpan: 2, 
            child: Text('This is an extra large window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.indigo, 
            constraints: const AdaptiveConstraints.xsmall(xsmall: true, small: true,), 
            columnSpan: 2, 
            child: Text('This is a small or extra small window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.pink, 
            constraints: const AdaptiveConstraints.medium(medium: true, large: true, xlarge: true,), 
            columnSpan: 2, 
            child: Text('This is a medium, large, or extra large window, width: ${context.widthPx}'),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 12, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 6, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 6, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 4, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 4, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 4, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
          AdaptiveContainer(
            color: Colors.black, 
            columnSpan: 2, 
            child: Text('This is for every screen size, width: ${context.widthPx}', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),),
        ],
      ),
    );
  }
}
