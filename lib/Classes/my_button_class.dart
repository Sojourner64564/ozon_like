import 'package:flutter/material.dart';

class MyButtonsClass {
  final IconData icon;
  final Color color;
  final void Function()? onPressed;
  final double iconSize = 25;

  const MyButtonsClass({
    required this.icon,
    this.color = Colors.grey,
    required this.onPressed,
  });
}