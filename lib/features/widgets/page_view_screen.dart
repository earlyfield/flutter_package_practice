import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class PageViewScreen extends StatefulWidget {
  PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.pageView.name),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
