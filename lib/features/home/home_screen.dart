import 'package:flutter/material.dart';
import 'package:flutter_package_practice/features/widgets/widgets_screen.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 50.0,
          child: ElevatedButton(
            onPressed: () => context.goNamed('widgets'),
            child: const Text('Widgets'),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 50.0,
          child: ElevatedButton(
            onPressed: () => context.goNamed('packages'),
            child: const Text('Packages'),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 50.0,
          child: ElevatedButton(
            onPressed: () => context.goNamed('design'),
            child: const Text('Design'),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 50.0,
          child: ElevatedButton(
            onPressed: () => context.goNamed('app'),
            child: const Text('App'),
          ),
        ),
      ],
    );
  }
}
