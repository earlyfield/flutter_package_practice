import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ChoiceChipScreen extends StatefulWidget {
  const ChoiceChipScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  final _choices = ["選択", "できる", "チップ"];
  int _choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.choiceChip.name),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: _choices.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                child: ChoiceChip(
                  avatar: Image.asset('assets/frog.png'),
                  label: Text(_choices[index]),
                  selected: _choiceIndex == index,
                  selectedColor: Colors.red,
                  onSelected: (bool selected) {
                    setState(() {
                      _choiceIndex = selected ? index : 0;
                    });
                  },
                  backgroundColor: Colors.green,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}
