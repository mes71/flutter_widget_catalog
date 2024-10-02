import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/presentations/pages/root/root_page.dart';

String initAppRoute = RootPage.tag;

Map<String, WidgetBuilder> appRoutes = {
  RootPage.tag: (context) => const RootPage(),
};
