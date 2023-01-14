// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher/catcher.dart';
import 'package:catcher_demo/presentation/my_home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Catcher.navigatorKey, 
      home: const MyHomePage(title: 'Flutter Demo Home Page'), 
      title: 'Flutter Demo', 
      theme: ThemeData(primarySwatch: Colors.blue), 
      debugShowCheckedModeBanner: false,
      );
  }
}
