import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:go_router/go_router.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets')),
      body: ListView.builder(
        itemCount: WidgetType.values.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 100.0,
            ),
            height: 50.0,
            child: ElevatedButton(
              onPressed: () => context.goNamed(WidgetType.values[index].name),
              child: Text(WidgetType.values[index].name),
            ),
          );
        },
      ),
    );
  }
}
