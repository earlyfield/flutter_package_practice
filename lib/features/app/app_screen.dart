import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:go_router/go_router.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Design"),
      ),
      body: ListView.builder(
        itemCount: AppType.values.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 100.0,
            ),
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                context.goNamed(AppType.values[index].name);
              },
              child: Text(AppType.values[index].name),
            ),
          );
        },
      ),
    );
  }
}
