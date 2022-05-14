import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class RangeSliderScreen extends StatefulWidget {
  RangeSliderScreen({Key? key}) : super(key: key);

  @override
  State<RangeSliderScreen> createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues values = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.rangeSlider.name),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          min: 0.0,
          max: 2.0,
          divisions: 8,
          labels: labels,
          onChanged: (newValues) {
            setState(() {
              values = newValues;
            });
          },
        ),
      ),
    );
  }
}
