import 'package:exp_asset_caching/src/app.dart';
import 'package:exp_asset_caching/src/settings/settings_controller.dart';
import 'package:exp_asset_caching/src/settings/settings_service.dart';
import 'package:flutter/material.dart';

//
// ignore: prefer-static-class
final  List<String> assetList = <String>[
  "assets/images/flutter_logo.png",
  "assets/images/3.0x/flutter_logo.png",
  "assets/images/2.0x/flutter_logo.png",
];


void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();

  // This is how to implement an asset cache.
  binding.addPostFrameCallback((_) async {
    final Element? context = binding.renderViewElement;
    if (context != null) {
      for (final asset in assetList) {
        precacheImage(
          AssetImage(asset),
          context,
        );
      }
    }
  });




  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}
