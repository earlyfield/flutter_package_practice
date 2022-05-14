import 'package:flutter/material.dart';
import 'package:flutter_package_practice/responsive/mobile_screen_layout.dart';
import 'package:flutter_package_practice/responsive/web_screen_layout.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        return const WebScreenLayout();
      }
      return const MobileScreenLayout();
    });
  }
}
