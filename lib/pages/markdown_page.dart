import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownPage extends StatelessWidget {
  const MarkdownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Markdown(
        data: 'This might be a test '
            '![imagee](resource:assets/images/1648653844985.png)');
  }
}
