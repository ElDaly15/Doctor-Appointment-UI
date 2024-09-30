import 'package:flutter/material.dart';

class SettingsModel {
  final String text;
  final IconData icon;
  final bool isNeedSwitch;

  SettingsModel(
      {required this.text, required this.icon, required this.isNeedSwitch});
}
