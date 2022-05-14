import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class AnimatedContainerScreen extends StatefulWidget {
  AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.animatedContainer.name),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: _selected ? 200.0 : 100.0,
            height: _selected ? 100.0 : 200.0,
            color: _selected ? Colors.red : Colors.blue,
            alignment:
                _selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
