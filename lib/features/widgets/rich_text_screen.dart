import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:url_launcher/url_launcher.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  State<RichTextScreen> createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetType.richText.name),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              const TextSpan(text: "これは "),
              TextSpan(
                text: "#flutter",
                style: const TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Tap #flutter");
                  },
              ),
              const TextSpan(text: " についての記事です。\n詳細は "),
              TextSpan(
                style: const TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
                text: "https://api.flutter.dev/",
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await launchUrl(_url);
                  },
              ),
              const TextSpan(text: " を参照してください。"),
            ],
          ),
        ),
      ),
    );
  }
}
