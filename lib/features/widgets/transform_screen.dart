import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

// 参考URL：
// https://medium.com/flutter/perspective-on-flutter-6f832f4d912e
class TransformScreen extends StatefulWidget {
  const TransformScreen({Key? key}) : super(key: key);

  @override
  State<TransformScreen> createState() => _TransformScreenState();
}

class _TransformScreenState extends State<TransformScreen> {
  int _counter = 0;
  Offset _offset = Offset.zero;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.01 * _offset.dy)
        ..rotateY(-0.01 * _offset.dx),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: ((details) => setState(() {
              _offset += details.delta;
            })),
        onDoubleTap: () => setState(() {
          _offset = Offset.zero;
        }),
        child: _defaultApp(context),
      ),
    );
  }

  _defaultApp(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.transform.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
