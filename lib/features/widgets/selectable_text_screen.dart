import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class SelectableTextScreen extends StatefulWidget {
  SelectableTextScreen({Key? key}) : super(key: key);

  @override
  State<SelectableTextScreen> createState() => _SelectableTextScreenState();
}

class _SelectableTextScreenState extends State<SelectableTextScreen> {
  String _selectedText = '';
  final String _selectableText = 'This is a selectable text';
  final TextStyle _styleBlue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.selectableText.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _selectedText,
              style: _styleBlue,
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellow,
              ),
              child: SelectableText(
                _selectableText,
                style: _style,
                onSelectionChanged: (selection, cause) {
                  setState(() {
                    _selectedText = _selectableText.substring(
                      selection.start,
                      selection.end,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
