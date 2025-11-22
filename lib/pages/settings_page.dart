import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/tasbeeh_controller.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TasbeehController>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: SwitchListTile(
          title: Text("Dark Mode"),
          value: controller.isDarkMode,
          onChanged: (_) => controller.toggleTheme(),
        ),
      ),
    );
  }
}
