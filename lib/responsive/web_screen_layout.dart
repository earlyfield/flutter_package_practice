import 'package:flutter/material.dart';
import 'package:flutter_package_practice/features/home/home_screen.dart';
import 'package:flutter_package_practice/utils/colors.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Text('Flutter Package Practice'),
      ),
      body: HomeScreen(),
    );
  }
}
