import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenScreen extends StatefulWidget {
  IntroductionScreenScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreenScreen> createState() =>
      _IntroductionScreenScreenState();
}

class _IntroductionScreenScreenState extends State<IntroductionScreenScreen> {
  final List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain something...',
      image: Center(
        child: Image.asset(
          'assets/introduction_image01.jpg',
        ),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.orange,
      ),
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's Go !"),
      ),
    ),
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain something...',
      image: Center(
        child: Image.asset('assets/introduction_image02.jpg'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.green),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's Go !"),
      ),
    ),
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain something...',
      image: Center(
        child: Image.asset('assets/introduction_image03.jpg'),
      ),
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's Go !"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PackageType.introduction_screen.name),
      ),
      body: IntroductionScreen(
        pages: listPagesViewModel,
        showBackButton: true,
        showSkipButton: false,
        showDoneButton: true,
        showNextButton: true,
        next: const Text('Next'),
        back: const Text('Back'),
        skip: const Text('Skip'),
        done: const Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        onDone: () {},
        onSkip: () {},
      ),
    );
  }
}
