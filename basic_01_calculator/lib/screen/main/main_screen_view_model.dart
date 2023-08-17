import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../result/result_screen.dart';

class MainScreenViewModel {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  GlobalKey get formKey => _formKey;

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

  String? existValueHeight(String? value) {
    if (value == null || value.isEmpty) {
      return '키를 입력하세요.';
    }
    return null;
  }

  String? existValueWeight(String? value) {
    if (value == null || value.isEmpty) {
      return '몸무게를 입력하세요.';
    }
    return null;
  }

  void existFormKeyCurrentState() {
    if (_formKey.currentState?.validate() == null) {
      return;
    }
  }

  void navPush(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          height: double.parse(_heightController.text),
          weight: double.parse(_weightController.text),
        ),
      ),
    );
  }
}
