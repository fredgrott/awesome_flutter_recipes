// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:catcher/catcher.dart';

/// * CatcherCustomLogger so that I can have app logging even when
/// * dealing unhanlded exceptions via catcher as I have to route
/// * it through log function from developer package and not console.
/// *
/// * @author Fredrick Allan Grott
///.
class CatcherCustomLogger extends CatcherLogger {
  @override
  void info(String message) {
    log("Catcher Custom Logger | Info | $message");
  }

  void config(String message) {
    log("Catcher Custom Logger | Info | $message");
  }

  void finer(String message) {
    log("Catcher Custom Logger | Info | $message");
  }

  void finest(String message) {
    log("Catcher Custom Logger | Info | $message");
  }

  @override
  void fine(String message) {
    log("Catcher Custom Logger | Fine | $message");
  }

  @override
  void warning(String message) {
    log("Catcher Custom Logger | Warning | $message");
  }

  @override
  void severe(String message) {
    log("Catcher Custom Logger | Servere | $message");
  }

  void shout(String message) {
    log("Catcher Custom Logger | Servere | $message");
  }
}
