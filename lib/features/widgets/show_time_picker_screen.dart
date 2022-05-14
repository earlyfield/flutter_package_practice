import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ShowTimePickerScreen extends StatefulWidget {
  ShowTimePickerScreen({Key? key}) : super(key: key);

  @override
  State<ShowTimePickerScreen> createState() => _ShowTimePickerScreenState();
}

class _ShowTimePickerScreenState extends State<ShowTimePickerScreen> {
  TimeOfDay? _time = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.showTimePicker.name),
      ),
      body: Center(
        child: Text(
          '${_time!.hour.toString()}:${_time!.minute.toString()}',
          style: const TextStyle(fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.access_time_outlined,
        ),
        onPressed: () async {
          TimeOfDay? newTime =
              await showTimePicker(context: context, initialTime: _time!);

          if (newTime != null) {
            setState(() {
              _time = newTime;
            });
          }
        },
      ),
    );
  }
}
