import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ExpandedScreen extends StatefulWidget {
  ExpandedScreen({Key? key}) : super(key: key);

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.expanded.name),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Text('Expanded\n\n(flex:1)'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
                child: Text('Expanded\n\n(flex:2)'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: Text('Expanded\n\n(flex:3)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
