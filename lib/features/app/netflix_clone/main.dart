import 'package:flutter/material.dart';
import 'package:flutter_package_practice/features/app/netflix_clone/netflix_appbar.dart';
import 'package:flutter_package_practice/features/app/netflix_clone/netflix_body.dart';
import 'package:flutter_package_practice/features/app/netflix_clone/netflix_bottom_appbar.dart';

// 参考URL
// https://github.com/kevinturpin97/app_netflix_flutter
class NetflixApp extends StatelessWidget {
  const NetflixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NetflixBody(),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: NetflixAppBar(),
      ),
      bottomNavigationBar: NetflixBottomAppbar(),
    );
  }
}
