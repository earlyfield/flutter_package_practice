import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class WrapScreen extends StatefulWidget {
  WrapScreen({Key? key}) : super(key: key);

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  final Widget _image = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(
      'assets/frog.png',
      height: 100,
      width: 100,
      fit: BoxFit.cover,
    ),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.wrap.name),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}
