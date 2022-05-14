import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class InteractiveViewerScreen extends StatefulWidget {
  InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerScreen> createState() =>
      _InteractiveViewerScreenState();
}

class _InteractiveViewerScreenState extends State<InteractiveViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.interactiveViewer.name),
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          maxScale: 100,
          child: Image.asset('assets/image01.jpg'),
        ),
      ),
    );
  }
}
