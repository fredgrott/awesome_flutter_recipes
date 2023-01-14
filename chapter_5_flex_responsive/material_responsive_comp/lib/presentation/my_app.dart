// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:material_responsive_comp/presentation/demo_selector.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DemoSelector(), 
      title: 'Adaptive Navigation Scaffold Demo', 
      debugShowCheckedModeBanner: false,);
  }
}
