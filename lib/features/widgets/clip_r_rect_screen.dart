import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ClipRRectScreen extends StatefulWidget {
  const ClipRRectScreen({Key? key}) : super(key: key);

  @override
  State<ClipRRectScreen> createState() => _ClipRRectScreenState();
}

class _ClipRRectScreenState extends State<ClipRRectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.clipRRect.name),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: Colors.orangeAccent,
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
