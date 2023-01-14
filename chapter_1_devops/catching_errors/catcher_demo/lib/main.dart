// ignore_for_file: noop_primitive_operations

import 'dart:async';
import 'dart:developer';

import 'package:catcher/catcher.dart';
import 'package:catcher_demo/domain/catcher_options.dart';
import 'package:catcher_demo/presentation/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails errorDetails) {
      log("Will log here ${errorDetails.exception.toString()}");
    };
    Catcher(
      runAppFunction: () {
        runApp(const MyApp());
        }, 
      releaseConfig: releaseOptions, 
      debugConfig: debugOptions, 
      profileConfig: profileOptions, 
      navigatorKey: Catcher.navigatorKey,
      );
  }, (
    error,
    stackTrace,
  ) {
    log("Others catching ${error.toString()}");
  },);

  runApp(const MyApp());
}
