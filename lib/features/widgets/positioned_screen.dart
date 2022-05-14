import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class PositionedScreen extends StatefulWidget {
  PositionedScreen({Key? key}) : super(key: key);

  @override
  State<PositionedScreen> createState() => _PositionedScreenState();
}

class _PositionedScreenState extends State<PositionedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.positioned.name),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 40,
              child: Image.asset(
                'assets/image01.jpg',
                width: 250,
              ),
            ),
            Positioned(
              left: 80,
              top: 80,
              child: Image.asset(
                'assets/image01.jpg',
                width: 250,
              ),
            ),
            Positioned(
              left: 120,
              top: 120,
              child: Image.asset(
                'assets/image01.jpg',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
