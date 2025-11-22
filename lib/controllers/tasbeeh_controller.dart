import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasbeehController extends ChangeNotifier {
  int counter = 0;
  bool isDarkMode = false;
  List<int> history = [];

  TasbeehController() {
    loadData();
  }

  Future<void> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    counter = prefs.getInt("counter") ?? 0;
    isDarkMode = prefs.getBool("isDarkMode") ?? false;

    history = prefs.getStringList("history")
        ?.map((e) => int.parse(e))
        .toList() ??
        [];

    notifyListeners();
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt("counter", counter);
    prefs.setBool("isDarkMode", isDarkMode);
    prefs.setStringList(
        "history", history.map((e) => e.toString()).toList());
  }

  void increment() {
    counter++;
    saveData();
    notifyListeners();
  }

  void reset() {
    history.add(counter);
    counter = 0;
    saveData();
    notifyListeners();
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    saveData();
    notifyListeners();
  }
}
