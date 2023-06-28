import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreenViewModel {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  TextEditingController get heightController => _heightController;
  TextEditingController get weightController => _weightController;

  Future save() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('height', double.parse(_heightController.text));
    await prefs.setDouble('weight', double.parse(_weightController.text));
  }

  Future load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? height = prefs.getDouble('height');
    final double? weight = prefs.getDouble('weight');

    if (height != null && weight != null) {
      _heightController.text = '$height';
      _weightController.text = '$weight';
      // print('$height');
    }
  }

  String? existValue(String? value) {
    if (value == null || value.isEmpty) {
      return '키를 입력하세요.';
    }
    return null;
  }
}
