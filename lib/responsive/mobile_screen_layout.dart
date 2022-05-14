import 'package:flutter/material.dart';
import 'package:flutter_package_practice/features/home/home_screen.dart';
import 'package:flutter_package_practice/utils/colors.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
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
