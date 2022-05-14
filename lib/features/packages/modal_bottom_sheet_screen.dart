import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalBottomSheetScreen extends StatefulWidget {
  ModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<ModalBottomSheetScreen> createState() => _ModalBottomSheetScreenState();
}

class _ModalBottomSheetScreenState extends State<ModalBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PackageType.modal_bottom_sheet.name),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Show Material Modal Bottom Sheet'),
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  // expand: true,
                  // closeProgressThreshold: 0.1,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
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
                      initialChildSize: 0.2,
                      minChildSize: 0.2,
                      maxChildSize: 0.8,
                    );
                  },
                );
              },
            ),
            ElevatedButton(
              child: const Text('Show Cupertino Modal Bottom Sheet'),
              onPressed: () {
                showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Scaffold(
                      body: Container(
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(title: Text('Item $index'));
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
