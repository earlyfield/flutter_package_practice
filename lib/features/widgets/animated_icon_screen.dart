import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class AnimatedIconScreen extends StatefulWidget {
  AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.animatedIcon.name),
      ),
      body: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.arrow_menu,
          progress: _controller,
          size: 100,
          color: Colors.orange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () async {
          await _controller.forward();
          await Future.delayed(const Duration(milliseconds: 500));
          await _controller.reverse();
        },
      ),
    );
  }
}
