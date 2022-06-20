import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio/pages/markdown_page.dart';
import '../components/center_element.dart';
import '../core/io/io_handler.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
    required this.dataPath,
  }) : super(key: key);

  final String dataPath;

  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        Expanded(
          child: FutureBuilder(
            future: IOHandler.getStringData(dataPath),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? Markdown(data: snapshot.data as String)
                  : Container();
            },
          ),
        ),
        Flexible(
          flex: 0,
          child: ElevatedButton(
            child: const Text('Back'),
            onPressed: () {
              Beamer.of(context).beamBack();
            },
          ),
        ),
      ],
    );
  }
}
