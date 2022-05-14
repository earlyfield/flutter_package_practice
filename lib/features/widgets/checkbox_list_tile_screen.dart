import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class CheckboxListTileScreen extends StatefulWidget {
  CheckboxListTileScreen({Key? key}) : super(key: key);

  @override
  State<CheckboxListTileScreen> createState() => _CheckboxListTileScreenState();
}

class _CheckboxListTileScreenState extends State<CheckboxListTileScreen> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.checkboxListTile.name),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          value: _isChecked,
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          tristate: true,
          subtitle: const Text('Subtitle'),
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
        ),
      ),
    );
  }
}
