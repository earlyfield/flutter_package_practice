import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class SilverAppBarScreen extends StatefulWidget {
  const SilverAppBarScreen({Key? key}) : super(key: key);

  @override
  State<SilverAppBarScreen> createState() => _SilverAppBarScreenState();
}

class _SilverAppBarScreenState extends State<SilverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            title: Text(WidgetType.silverAppBar.name),
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Mapp'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Text(
                'SLIVER',
                style: TextStyle(
                  fontSize: 600,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
