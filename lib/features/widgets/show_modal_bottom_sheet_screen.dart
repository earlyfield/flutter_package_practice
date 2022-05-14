import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:go_router/go_router.dart';

class ShowModalBottomSheetScreen extends StatefulWidget {
  ShowModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<ShowModalBottomSheetScreen> createState() =>
      _ShowModalBottomSheetScreenState();
}

class _ShowModalBottomSheetScreenState
    extends State<ShowModalBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.showModalBottomSheet.name),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: false,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 600,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
