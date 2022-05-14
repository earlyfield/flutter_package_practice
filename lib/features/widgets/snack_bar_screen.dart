import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class SnackBarScreen extends StatefulWidget {
  SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  final snackBar = SnackBar(
    backgroundColor: Colors.blue,
    content: Row(
      children: const [
        Icon(
          Icons.thumb_up,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Text('Hello!'),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.snackBar.name),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            child: Text('Show SnackBar'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}
