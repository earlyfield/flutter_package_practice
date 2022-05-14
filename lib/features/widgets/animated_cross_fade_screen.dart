import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.animatedCrossFade.name),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset(
            'assets/image02.jpg',
            width: 350,
          ),
          secondChild: Image.asset(
            'assets/image01.jpg',
            width: 200,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
