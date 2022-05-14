import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:go_router/go_router.dart';

class WillPopScopeScreen extends StatefulWidget {
  WillPopScopeScreen({Key? key}) : super(key: key);

  @override
  State<WillPopScopeScreen> createState() => _WillPopScopeScreenState();
}

class _WillPopScopeScreenState extends State<WillPopScopeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(WidgetType.willPopScope.name),
        ),
        backgroundColor: Colors.blue,
        body: const Center(),
      ),
      // 前の画面に戻る前に別の処理を挟むことができる
      onWillPop: () async {
        // Trueを返すと、前の画面に戻る機能が有効になる。
        // Falseの場合、前の画面に戻る機能が無効になる。
        return false;
      },
    );
  }
}
