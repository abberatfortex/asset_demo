import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var isDarkMode = false.obs;

  void toggleTheme() {
    if (Theme.of(context).brightness == Brightness.dark) {
      isDarkMode.value = true;
    }
    isDarkMode.toggle();
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: IconButton(
          icon: Obx(() => Icon(isDarkMode.value ? Icons.wb_sunny : Icons.brightness_2)),
          onPressed: toggleTheme,
        ),
      ),
    );
  }
}
