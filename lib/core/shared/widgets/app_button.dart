import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.color, required this.icon, this.onTap, super.key});

  final Function()? onTap;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    backgroundColor: color,
    child: icon,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
    onPressed: onTap,
    );
  }
}
