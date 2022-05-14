import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class TableScreen extends StatefulWidget {
  TableScreen({Key? key}) : super(key: key);

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Cell 1'),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Cell 2'),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Cell 3'),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.table.name),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(120.0),
          children: [
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
          ],
        ),
      ),
    );
  }
}
