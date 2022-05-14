import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class GridPaperScreen extends StatefulWidget {
  GridPaperScreen({Key? key}) : super(key: key);

  @override
  State<GridPaperScreen> createState() => _GridPaperScreenState();
}

class _GridPaperScreenState extends State<GridPaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.gridPaper.name),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 1,
          subdivisions: 10,
          interval: 200,
        ),
      ),
    );
  }
}
