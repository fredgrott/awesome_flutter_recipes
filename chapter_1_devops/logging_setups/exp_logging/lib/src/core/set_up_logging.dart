// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


// ignore_for_file: unused_element

import 'dart:async';
import 'dart:developer';

import 'package:exp_logging/src/core/my_dev_log_appender.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
//
// ignore: prefer-static-class
const String appTitle = "Logging Demo";
//
// ignore: prefer-static-class
final Logger appLog = Logger(appTitle);

late StreamSubscription<LogRecord>? _subscription;
//
// ignore: prefer-static-class
void setUpAppLogging() {
  if (kDebugMode) {
    recordStackTraceAtLevel = Level.ALL;

    _subscription = Logger.root.onRecord.listen((record) {
      if (record.error != null && record.stackTrace != null) {
        log('${record.level.name}: ${record.loggerName}: ${record.time}: ${record.message}: ${record.error}: ${record.stackTrace}');

        log(
          'level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message} error: ${record.error} exception: ${record.stackTrace}',
        );
      } else if (record.error != null) {
        log('level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message} error: ${record.error}');
      } else {
        log('level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message}');
      }
    });
    MyDevLogAppender(formatter: const MyDevLogRecordFormatter())
        .attachToLogger(Logger.root);
  }
  if (kReleaseMode) {
    recordStackTraceAtLevel = Level.WARNING;

    _subscription = Logger.root.onRecord.listen((record) {
      if (record.error != null && record.stackTrace != null) {
        log('${record.level.name}: ${record.loggerName}: ${record.time}: ${record.message}: ${record.error}: ${record.stackTrace}');

        log(
          'level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message} error: ${record.error} exception: ${record.stackTrace}',
        );
      } else if (record.error != null) {
        log('level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message} error: ${record.error}');
      } else {
        log('level: ${record.level.name} loggerName: ${record.loggerName} time: ${record.time} message: ${record.message}');
      }
    });
    MyReleaseLogAppender(formatter: const MyReleaseLogRecordFormatter())
        .attachToLogger(Logger.root);
  }
}
