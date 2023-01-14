// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:developer';

import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';

class MyDevLogAppender extends BaseLogAppender {
  void Function(Object line)? printer;
  MyDevLogAppender({LogRecordFormatter? formatter})
      : super(formatter ?? defaultLogRecordFormatter());

  MyDevLogAppender setupLogging({
    Level level = Level.ALL,
    Level stderrLevel = Level.OFF,
  }) {
    Logger.root.clearListeners();
    Logger.root.level = level;

    return defaultLogAppender(stderrLevel: stderrLevel)
      ..attachToLogger(Logger.root);
  }

  @override
  void handle(LogRecord record) {
    log(formatter.format(record));
  }
}
//
// ignore: prefer-static-class
MyDevLogAppender defaultLogAppender({
  LogRecordFormatter? formatter,
  Level? stderrLevel,
}) =>
    MyDevLogAppender(formatter: formatter);

class MyReleaseLogAppender extends BaseLogAppender {
  void Function(Object line)? printer;
  MyReleaseLogAppender({LogRecordFormatter? formatter})
      : super(formatter ?? defaultReleaseLogRecordFormatter());

  MyReleaseLogAppender setupLogging({
    Level level = Level.ALL,
    Level stderrLevel = Level.OFF,
  }) {
    Logger.root.clearListeners();
    Logger.root.level = level;

    return defaultReleaseLogAppender(stderrLevel: stderrLevel)
      ..attachToLogger(Logger.root);
  }

  @override
  void handle(LogRecord record) {
    log(formatter.format(record));
  }
}
//
// ignore: prefer-static-class
MyReleaseLogAppender defaultReleaseLogAppender({
  LogRecordFormatter? formatter,
  Level? stderrLevel,
}) =>
    MyReleaseLogAppender(formatter: formatter);

//
// ignore: prefer-static-class
LogRecordFormatter defaultLogRecordFormatter() =>
    const DefaultLogRecordFormatter();

//
// ignore: prefer-static-class
LogRecordFormatter defaultReleaseLogRecordFormatter() =>
    const DefaultLogRecordFormatter();

class MyDevLogRecordFormatter extends LogRecordFormatter {
  const MyDevLogRecordFormatter();
  @override
  StringBuffer formatToStringBuffer(
    LogRecord rec,
    StringBuffer sb,
  ) {
    sb.write('${rec.time} ${rec.level.name} ${rec.zone} '
        '${rec.loggerName} - ${rec.message}');

    if (rec.error != null) {
      sb.writeln();
      sb.write('### ${rec.error?.runtimeType}: ');
      sb.write(rec.error);
    }

    final stackTrace = rec.stackTrace ??
        (rec.error is Error ? (rec.error as Error).stackTrace : null);
    if (stackTrace != null) {
      sb.writeln();
      sb.write(stackTrace);
    }

    return sb;
  }
}

class MyReleaseLogRecordFormatter extends LogRecordFormatter {
  const MyReleaseLogRecordFormatter();
  @override
  StringBuffer formatToStringBuffer(
    LogRecord rec,
    StringBuffer sb,
  ) {
    sb.write('${rec.time} ${rec.level.name}  '
        '${rec.loggerName} - ${rec.message}');

    if (rec.error != null) {
      sb.writeln();
      sb.write('### ${rec.error?.runtimeType}: ');
      sb.write(rec.error);
    }

    final stackTrace = rec.stackTrace ??
        (rec.error is Error ? (rec.error as Error).stackTrace : null);
    if (stackTrace != null) {
      sb.writeln();
      sb.write(stackTrace);
    }

    return sb;
  }
}
