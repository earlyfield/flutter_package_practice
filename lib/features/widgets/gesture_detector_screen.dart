import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class GestureDetectorScreen extends StatefulWidget {
  GestureDetectorScreen({Key? key}) : super(key: key);

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.gestureDetector.name),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _counter += 1;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                _counter.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
