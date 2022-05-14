import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class VisibilityScreen extends StatefulWidget {
  VisibilityScreen({Key? key}) : super(key: key);

  @override
  State<VisibilityScreen> createState() => _VisibilityScreenState();
}

class _VisibilityScreenState extends State<VisibilityScreen> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.visibility.name),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/frog.png',
                height: 100,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.asset(
                  'assets/image01.jpg',
                ),
              ),
              Image.asset(
                'assets/frog.png',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
