import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class PlatformCheckingScreen extends StatefulWidget {
  PlatformCheckingScreen({Key? key}) : super(key: key);

  @override
  State<PlatformCheckingScreen> createState() => _PlatformCheckingScreenState();
}

class _PlatformCheckingScreenState extends State<PlatformCheckingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.platformChecking.name),
      ),
      body: Center(
        child: kIsWeb
            ? Image.asset('assets/chrome_icon.png')
            : Platform.isIOS
                ? Image.asset('assets/apple_icon.png')
                : Image.asset('assets/android_icon.png'),
      ),
    );
  }
}
