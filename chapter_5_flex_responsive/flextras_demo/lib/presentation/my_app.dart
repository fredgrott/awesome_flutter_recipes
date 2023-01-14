// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PaddedColumn(
          padding: const EdgeInsets.all(20), 
          children: [
            Flexible(
              child: ExpandedScrollingRow(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue, 
                      width: 400,
                      ),
                  ), 
                  Expanded(
                    child: Container(
                      color: Colors.purple, 
                      width: 400, 
                      child: ExpandedScrollingColumn(
                        children: [
                          const Text("TOP CONTENT", style: TextStyle(fontSize: 20),), 
                          Expanded(
                            child: Container(
                              alignment: Alignment.center, 
                              height: 400, 
                              child: const Text("MIDDLE CONTENT"),
                              ),
                          ),
                          const Text("BOTTOM CONTENT", style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  ],
                ),
              ), 
              SeparatedRow(
                separatorBuilder: () => const Text("divider"), 
                children: [
                  Expanded(
                    child: Container(
                             color: Colors.green, 
                             width: 200, 
                             height: 20,
                             ),
                    ), 
                    Expanded(
                      child: Container(
                        color: Colors.green, 
                        width: 200, 
                        height: 20,
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ), 
          debugShowCheckedModeBanner: false,);
  }
}
