import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class FlexibleScreen extends StatefulWidget {
  FlexibleScreen({Key? key}) : super(key: key);

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.flexible.name),
      ),
      body: Center(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Text('Flexible\n\n(flex:1)'),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.orange,
                child: Text('Flexible\n\n(flex:2)'),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: Text('Flexible\n\n(flex:3)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
