import 'package:exp_logging/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller,});

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: DropdownButton<ThemeMode>(
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system, 
              child: Text('System Theme'),
            ), 
            DropdownMenuItem(
              value: ThemeMode.light, 
              child: Text('Light Theme'),
            ), 
            DropdownMenuItem(
              value: ThemeMode.dark, 
              child: Text('Dark Theme'),
            ),
          ], 
          value: controller.themeMode, 
          onChanged: controller.updateThemeMode,
        ),
      ),
    );
  }
}
