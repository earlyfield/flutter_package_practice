import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ToolTipScreen extends StatefulWidget {
  ToolTipScreen({Key? key}) : super(key: key);

  @override
  State<ToolTipScreen> createState() => _ToolTipScreenState();
}

class _ToolTipScreenState extends State<ToolTipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.tooltip.name),
      ),
      body: Center(
        child: Tooltip(
          message: 'Image message',
          child: Image.asset('assets/image01.jpg'),
        ),
      ),
    );
  }
}
