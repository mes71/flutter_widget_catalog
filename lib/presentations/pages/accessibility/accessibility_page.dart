import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/data/model/main/main_model.dart';
import 'package:flutter_widget_catalog/presentations/pages/accessibility/absorbPointer/absorb_pointer_page.dart';
import 'package:flutter_widget_catalog/presentations/pages/accessibility/semantics_page.dart';
import 'package:flutter_widget_catalog/presentations/pages/root/root_page.dart';

List<MainModel> accessibilityList = [
  MainModel(
    title: 'AbsorbPointer',
    route: AbsorbPointerPage.tag,
    color: Colors.deepPurple.shade300,
  ),
  MainModel(
    title: 'Semantics',
    route: SemanticsPage.tag,
    color: Colors.deepPurple.shade200,
  ),
];

class AccessibilityPage extends StatefulWidget {
  const AccessibilityPage({super.key});

  static const String tag = '/accessibilityRoute';

  @override
  State<AccessibilityPage> createState() => _AccessibilityPageState();
}

class _AccessibilityPageState extends State<AccessibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
        centerTitle: true,
      ),
      body: buildListViewWidget(accessibilityList),
    );
  }
}
