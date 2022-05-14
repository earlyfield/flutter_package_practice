import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';

class DraggableScrollableSheetScreen extends StatefulWidget {
  DraggableScrollableSheetScreen({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetScreen> createState() =>
      _DraggableScrollableSheetScreenState();
}

class _DraggableScrollableSheetScreenState
    extends State<DraggableScrollableSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.draggableScrollableSheet.name),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                isDismissible: false,
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                    builder: (BuildContext context, scrollController) {
                      return Container(
                        height: 400,
                        color: Colors.white,
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(title: Text('Item $index'));
                          },
                        ),
                      );
                    },
                    initialChildSize: 0.4,
                    minChildSize: 0.4,
                    maxChildSize: 0.8,
                  );
                });
          },
        ),
      ),
    );
  }
}
