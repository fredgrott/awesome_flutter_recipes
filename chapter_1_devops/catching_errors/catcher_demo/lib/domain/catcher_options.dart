// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:catcher/catcher.dart';
import 'package:catcher_demo/domain/catcher_custom_logger.dart';
//
// ignore: prefer-static-class
final ReportMode reportMode = PageReportMode(showStackTrace: false);
//
// ignore: prefer-static-class
const String kAppErrorEmailAddyOne = "myname@myname.com";
//
// ignore: prefer-static-class
const String kAppErrorEmailAddyTwo = "myname@myname.com";
//
//ignore: prefer-static-class
const String kAppErrorReportTitle = "Error";
//
// ignore: prefer-static-class
const String kAppErrorReportHeader = "ErrorDetail";
//
// ignore: prefer-static-class
final CatcherOptions debugOptions = CatcherOptions(
  reportMode,
  [
    ConsoleHandler(
      enableDeviceParameters: true, 
      enableApplicationParameters: true, 
      enableStackTrace: true, 
      enableCustomParameters: true,
      ),
    // Requires the SentryClient import, put this in pubspec sentry: ^5.1.0
    //SentryHandler(
    //SentryClient(SentryOptions(dsn: 'YOUR DSN HERE')),
    //printLogs: true,
    //),
  ],
  logger: CatcherCustomLogger(),
);
//
// ignore: prefer-static-class
final CatcherOptions releaseOptions = CatcherOptions(
  reportMode,
  [
    EmailManualHandler(
      [kAppErrorEmailAddyOne, 
      kAppErrorEmailAddyTwo,
      ], 
      sendHtml: true, 
      printLogs: true, 
      emailTitle: kAppErrorReportTitle, 
      emailHeader: kAppErrorReportHeader, 
      enableDeviceParameters: true, 
      enableApplicationParameters: true, 
      enableStackTrace: true, 
      enableCustomParameters: true,
    ),
  ],
  logger: CatcherCustomLogger(),
);
//
// ignore: prefer-static-class
final CatcherOptions profileOptions = CatcherOptions(
  reportMode,
  [
    EmailManualHandler(
      [kAppErrorEmailAddyOne, 
      kAppErrorEmailAddyTwo,
      ], 
      sendHtml: true, 
      printLogs: true, 
      emailTitle: kAppErrorReportTitle, 
      emailHeader: kAppErrorReportHeader, 
      enableDeviceParameters: true, 
      enableApplicationParameters: true, 
      enableStackTrace: true, 
      enableCustomParameters: true,
      ),
  ],
  logger: CatcherCustomLogger(),
);
