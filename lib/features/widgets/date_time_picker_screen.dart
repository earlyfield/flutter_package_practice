import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ShowDatePickerScreen extends StatefulWidget {
  const ShowDatePickerScreen({Key? key}) : super(key: key);

  @override
  State<ShowDatePickerScreen> createState() => _ShowDatePickerScreen();
}

class _ShowDatePickerScreen extends State<ShowDatePickerScreen> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.showDatePicker.name),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${_dateTime.year}/${_dateTime.month}/${_dateTime.day}',
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? _newDate = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(1800),
                  lastDate: DateTime(3000),
                );

                if (_newDate != null) {
                  setState(() {
                    _dateTime = _newDate;
                  });
                }
              },
              child: const Text('Get Date'),
            )
          ],
        ),
      ),
    );
  }
}
