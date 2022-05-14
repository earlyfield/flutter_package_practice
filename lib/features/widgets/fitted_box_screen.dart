import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class FittedBoxScreen extends StatefulWidget {
  FittedBoxScreen({Key? key}) : super(key: key);

  @override
  State<FittedBoxScreen> createState() => _FittedBoxScreenState();
}

class _FittedBoxScreenState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.fittedBox.name),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            margin: const EdgeInsets.all(20.0),
            child: const Center(
              child: Text(
                "FittedBox",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 200,
            margin: const EdgeInsets.all(20.0),
            child: const FittedBox(
              child: Center(
                child: Text(
                  "FittedBox",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
