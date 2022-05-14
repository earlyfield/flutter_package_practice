import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class InkWellScreen extends StatefulWidget {
  InkWellScreen({Key? key}) : super(key: key);

  @override
  State<InkWellScreen> createState() => _InkWellScreenState();
}

class _InkWellScreenState extends State<InkWellScreen> {
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.inkWell.name),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          child: Ink(
            height: 200,
            width: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
