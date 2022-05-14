import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class ExpansionTileScreen extends StatefulWidget {
  ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.expansionTile.name),
      ),
      body: const ExpansionTile(
        title: Text('See more...'),
        leading: Icon(Icons.info),
        backgroundColor: Colors.orange,
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('Second'),
          ),
          ListTile(
            title: Text('Third'),
          ),
        ],
      ),
    );
  }
}
