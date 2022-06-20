import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:portfolio/core/io/io_handler.dart';

class MarkdownPage extends StatelessWidget {
  const MarkdownPage({
    Key? key,
    required this.mdPath,
  }) : super(key: key);

  final String mdPath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: IOHandler.getStringData(mdPath),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? MarkdownWidget(data: snapshot.data as String)
            : Container();
      },
    );
  }
}
