import 'package:employee_data_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  void showSnack(String text) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(text), duration: const Duration(seconds: 2), backgroundColor: ColorName.colorPrimary),
    );
  }

  Future push(Widget screen) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => screen));
  }

  Future pushReplaceMent(Widget screen) async {
    await Navigator.pushReplacement(this, MaterialPageRoute(builder: (context) => screen));
  }

  void pop() {
    Navigator.pop(this);
  }
}
