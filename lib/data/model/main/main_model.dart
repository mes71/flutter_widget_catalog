import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/presentations/pages/accessibility/accessibility_page.dart';

class MainModel {
  final String title;
  final String route;
  final Color color;

  MainModel({
    required this.title,
    required this.route,
    required this.color,
  });
}

List<MainModel> mainList = [
  MainModel(
      title: 'Accessibility',
      route: AccessibilityPage.tag,
      color: Colors.deepPurple.shade300)
];
