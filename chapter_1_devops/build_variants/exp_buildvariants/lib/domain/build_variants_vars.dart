// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_classes_with_only_static_members

enum Environment {
  debug,
  stagging,
  prod,
  preview,
}

bool isItDebug = false;

bool isItStagging = false;

bool isItProd = false;

bool isItPreview = false;

class Constants {
  late Map<String, dynamic> _config;

  void setEnvironment(Environment env) {
    switch (env) {
      case Environment.debug:
        _config = _Config.debugConstants;
        isItDebug = true;
        break;
      case Environment.stagging:
        _config = _Config.qaConstants;
        isItStagging = true;
        break;
      case Environment.prod:
        _config = _Config.prodConstants;
        isItProd = true;
        break;
      case Environment.preview:
        _config = _Config.previewConstants;
        isItPreview = true;
        break;
    }
  }

  dynamic get whereAmI {
    return _config[_Config.whereAmI];
  }
}

class _Config {
  static final Map<String, dynamic> debugConstants = <String, dynamic>{
    whereAmI: "debug",
  };

  static final Map<String, dynamic> prodConstants = <String, dynamic>{
    whereAmI: "prod",
  };

  static final Map<String, dynamic> qaConstants = <String, dynamic>{
    whereAmI: "stagging",
  };

  static final Map<String, dynamic> previewConstants = <String, dynamic>{
    whereAmI: "preview",
  };

  // Our env variables.
  static const whereAmI = "where_am_i";
}
