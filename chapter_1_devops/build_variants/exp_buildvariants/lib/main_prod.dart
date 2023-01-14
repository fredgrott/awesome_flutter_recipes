// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:exp_buildvariants/domain/build_variants_vars.dart';
import 'package:exp_buildvariants/main.dart';

void main() {
  Constants().setEnvironment(Environment.prod);
  mainDelegate();
}
