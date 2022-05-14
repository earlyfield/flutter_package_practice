import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// リストに表示するデータ
final list = [
  HeroItemModel(
    id: '1',
    title: 'タイトル1',
    subtitle: 'サブタイトル1',
    imagePath:
        'https://cdn.pixabay.com/photo/2017/05/16/21/24/gorilla-2318998_1280.jpg',
    backgroundColor: Colors.amber,
  ),
  HeroItemModel(
    id: '2',
    title: 'タイトル2',
    subtitle: 'サブタイトル2',
    imagePath:
        'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_1280.jpg',
    backgroundColor: Colors.cyan,
  ),
  HeroItemModel(
    id: '3',
    title: 'タイトル3',
    subtitle: 'サブタイトル3',
    imagePath:
        'https://images.unsplash.com/photo-1648737965402-2b9c3f3eaa6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    backgroundColor: Colors.redAccent,
  ),
];

class HeroScreen extends StatefulWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Center(
        child: ListView.builder(
          itemExtent: 230.0,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                context.goNamed('HeroDetailPage', extra: list[index]);
              },
              child: Card(
                margin: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Hero(
                      tag: 'background' + list[index].id,
                      child: Container(color: list[index].backgroundColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'image' + list[index].id,
                            child: Image.network(
                              list[index].imagePath,
                              fit: BoxFit.fitWidth,
                              height: 100,
                            ),
                          ),
                          Hero(
                            tag: 'title' + list[index].id,
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                list[index].title,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Hero(
                            tag: 'subtitle' + list[index].id,
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                list[index].subtitle,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  final HeroItemModel item;
  const HeroDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'title' + item.id,
          child: Material(
            color: Colors.transparent,
            child: Text(
              item.title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        backgroundColor: item.backgroundColor,
      ),
      body: Stack(
        children: [
          Hero(
            tag: 'background' + item.id,
            child: Container(
              color: item.backgroundColor,
            ),
          ),
          Center(
            child: Column(
              children: [
                Hero(
                  tag: 'image' + item.id,
                  child: Image.network(
                    item.imagePath,
                    fit: BoxFit.fitWidth,
                    height: 300,
                  ),
                ),
                Hero(
                  tag: 'subtitle' + item.id,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      item.subtitle,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroItemModel {
  String id;
  String title;
  String subtitle;
  String imagePath;
  Color backgroundColor;

  HeroItemModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.backgroundColor,
  });
}
