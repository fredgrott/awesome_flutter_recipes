// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
// ignore: prefer-static-class
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const double narrowScreenWidthThreshold = 450;

// ignore: prefer-static-class
const Widget divider = SizedBox(height: 10);

// ignore: prefer-static-class
const double transitionLength = 500;

//
// ignore: prefer-static-class
const rowDivider = SizedBox(width: 20);
//
// ignore: prefer-static-class
const colDivider = SizedBox(height: 10);
//
// ignore: prefer-static-class
const double cardWidth = 115;
//
// ignore: prefer-static-class
const double widthConstraint = 450;


enum ColorSeedFlex {
  baseColor(
    'M3 Baseline',
    FlexScheme.materialBaseline,
    FlexColor.materialBaselineLightPrimary,
    FlexColor.materialBaselineDarkPrimary,
  ),

  flutterDash(
    "Flutter Dash",
    FlexScheme.flutterDash,
    FlexColor.dashBlueLightPrimary,
    FlexColor.dashBlueDarkPrimary,
  ),
  verdunHemlock(
    "VerdunHemlock",
    FlexScheme.verdunHemlock,
    FlexColor.verdunHemlockLightPrimary,
    FlexColor.verdunHemlockDarkPrimary,
  ),
  dellGenoa(
    "DellGenoa",
    FlexScheme.dellGenoa,
    FlexColor.dellGenoaGreenLightPrimary,
    FlexColor.dellGenoaGreenDarkPrimary,
  ),
  blumineBlue(
    "BlumineBlue",
    FlexScheme.blumineBlue,
    FlexColor.blumineBlueLightPrimary,
    FlexColor.blumineBlueDarkPrimary,
  ),
  rosewood(
    "Rosewood",
    FlexScheme.rosewood,
    FlexColor.rosewoodLightPrimary,
    FlexColor.rosewoodDarkPrimary,
  ),
  sanJuanBlue(
    "SanJuanBlue",
    FlexScheme.sanJuanBlue,
    FlexColor.sanJuanBlueLightPrimary,
    FlexColor.sanJuanBlueDarkPrimary,
  ),
  blueWhale(
    "BlueWhale",
    FlexScheme.blueWhale,
    FlexColor.blueWhaleLightPrimary,
    FlexColor.blueWhaleDarkPrimary,
  ),
  outerSpace(
    "OuterSpace",
    FlexScheme.outerSpace,
    FlexColor.outerSpaceLightPrimary,
    FlexColor.outerSpaceDarkPrimary,
  ),
  espresso(
    "Espresso",
    FlexScheme.espresso,
    FlexColor.espressoLightPrimary,
    FlexColor.espressoDarkPrimary,
  ),
  mallardGreen(
    "MallardGreen",
    FlexScheme.mallardGreen,
    FlexColor.mallardGreenLightPrimary,
    FlexColor.mallardGreenDarkPrimary,
  ),
  bahamaBlue(
    "BahamaBlue",
    FlexScheme.bahamaBlue,
    FlexColor.bahamaBlueLightPrimary,
    FlexColor.bahamaBlueDarkPrimary,
  ),
  damask(
    "Damask",
    FlexScheme.damask,
    FlexColor.damaskLightPrimary,
    FlexColor.damaskDarkPrimary,
  ),
  bigStone(
    "BigStone",
    FlexScheme.bigStone,
    FlexColor.bigStoneLightPrimary,
    FlexColor.bigStoneDarkPrimary,
  ),
  shark(
    "Shark",
    FlexScheme.shark,
    FlexColor.sharkLightPrimary,
     FlexColor.sharkDarkPrimary,
  ),
  barossa(
    "Barossa",
    FlexScheme.barossa,
    FlexColor.barossaLightPrimary,
    FlexColor.barossaDarkPrimary,
  ),
  ebonyClay(
    "EbonyClay",
    FlexScheme.ebonyClay,
    FlexColor.ebonyClayLightPrimary,
    FlexColor.ebonyClayDarkPrimary,
  ),
  deepPurple(
    "DeepPurple",
    FlexScheme.deepPurple,
    FlexColor.deepPurpleLightPrimary,
    FlexColor.deepPurpleDarkPrimary,
  ),
  vesuviusBurn(
    "VesuviusBurn",
    FlexScheme.vesuviusBurn,
    FlexColor.vesuviusBurnLightPrimary,
    FlexColor.vesuviusBurnDarkPrimary,
  ),
  mango(
    "Mango",
    FlexScheme.mango,
    FlexColor.mangoLightPrimary,
    FlexColor.mangoDarkPrimary,
  ),
  gold(
    "Gold",
    FlexScheme.gold,
    FlexColor.goldLightPrimary,
    FlexColor.goldDarkPrimary,
  ),
  wasabi(
    "Wasabi",
    FlexScheme.wasabi,
    FlexColor.wasabiLightPrimary,
    FlexColor.wasabiDarkPrimary,
  ),
  greyLaw(
    "GreyLaw",
    FlexScheme.greyLaw,
    FlexColor.greyLawLightPrimary,
    FlexColor.greyLawDarkPrimary,
  ),
  jungle(
    "Jungle",
    FlexScheme.jungle,
    FlexColor.jungleLightPrimary,
    FlexColor.jungleDarkPrimary,
  ),
  money(
    "Money",
    FlexScheme.money,
    FlexColor.moneyLightPrimary,
    FlexColor.moneyDarkPrimary,
  ),
  purpleBrown(
    "PurpleBrown",
    FlexScheme.purpleBrown,
    FlexColor.purpleBrownLightPrimary,
    FlexColor.purpleBrownDarkPrimary,
  ),
  redWine(
    "RedWine",
    FlexScheme.redWine,
    FlexColor.redWineLightPrimary,
    FlexColor.redWineDarkPrimary,
  ),
  mandyRed(
    "MandyRed",
    FlexScheme.mandyRed,
    FlexColor.mandyRedLightPrimary,
    FlexColor.mandyRedDarkPrimary,
  ),
  sakura(
    "Sakura",
    FlexScheme.sakura,
    FlexColor.sakuraLightPrimary,
    FlexColor.sakuraDarkPrimary,
  ),
  deepBlue(
    "DeepBlue",
    FlexScheme.deepBlue,
    FlexColor.deepBlueLightPrimary,
    FlexColor.deepBlueDarkPrimary,
  ),
  brandBlue(
    "BrandBlue",
    FlexScheme.brandBlue,
    FlexColor.brandBlueLightPrimary,
    FlexColor.brandBlueDarkPrimary,
  ),
  aquaBlue(
    "AquaBlue",
    FlexScheme.aquaBlue,
    FlexColor.aquaBlueLightPrimary,
    FlexColor.aquaBlueDarkPrimary,
  ),
  hippieBlue(
    "HippieBlue",
    FlexScheme.hippieBlue,
    FlexColor.hippieBlueLightPrimary,
    FlexColor.hippieBlueDarkPrimary,
  ),
  material(
    "M2 Baseline",
    FlexScheme.material,
    FlexColor.materialLightPrimary,
    FlexColor.materialDarkPrimary,
  ),
  blue(
    "M2 Blue",
    FlexScheme.blue,
    FlexColor.blueLightPrimary,
    FlexColor.blueDarkPrimary,
  ),
  indigo(
    "Indigo",
    FlexScheme.indigo,
    FlexColor.indigoLightPrimary,
    FlexColor.indigoDarkPrimary,
  ),
  // ignore: prefer-correct-identifier-length
  red(
    "Red",
    FlexScheme.red,
    FlexColor.redLightPrimary,
    FlexColor.redDarkPrimary,
  ),
  green(
    "Green",
    FlexScheme.green,
    FlexColor.greenLightPrimary,
    FlexColor.greenDarkPrimary,
  ),
  amber(
    "M2 Amber",
    FlexScheme.amber,
    FlexColor.amberLightPrimary,
    FlexColor.amberDarkPrimary,
  ),
  ;

  const ColorSeedFlex(
    this.label,
    this.scheme,
    this.lightColor,
    this.darkColor,
  );
  final String label;
  final FlexScheme scheme;
  final Color lightColor;
  final Color darkColor;
}

enum ColorSeed {
  baseColor(
    'M3 Baseline',
    Color(0xff6750a4),
  ),
  indigo(
    'Indigo',
    Colors.indigo,
  ),
  blue(
    'Blue',
    Colors.blue,
  ),
  teal(
    'Teal',
    Colors.teal,
  ),
  green(
    'Green',
    Colors.green,
  ),
  yellow(
    'Yellow',
    Colors.yellow,
  ),
  orange(
    'Orange',
    Colors.orange,
  ),
  deepOrange(
    'Deep Orange',
    Colors.deepOrange,
  ),
  pink(
    'Pink',
    Colors.pink,
  );

  const ColorSeed(
    this.label,
    this.color,
  );
  final String label;
  final Color color;
}

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);
  final int value;
}

class ElevationInfo {
  final int level;
  final double elevation;
  final int overlayPercent;

  const ElevationInfo(
    this.level,
    this.elevation,
    this.overlayPercent,
  );
}
