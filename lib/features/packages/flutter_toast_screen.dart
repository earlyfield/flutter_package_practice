import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastScreen extends StatefulWidget {
  FlutterToastScreen({Key? key}) : super(key: key);

  @override
  State<FlutterToastScreen> createState() => _FlutterToastScreenState();
}

class _FlutterToastScreenState extends State<FlutterToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PackageType.flutterToast.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "トースト表示成功！",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 5,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: const Text('表示'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.cancel();
              },
              child: const Text('キャンセル'),
            ),
          ],
        ),
      ),
    );
  }
}
