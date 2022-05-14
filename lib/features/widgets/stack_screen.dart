import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class StackScreen extends StatefulWidget {
  StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.stack.name),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/image01.jpg'),
            ),
            Center(
              child: Image.asset(
                'assets/frog.png',
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
