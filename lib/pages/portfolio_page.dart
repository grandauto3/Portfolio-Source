import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/portfolio_data.dart';
import '../components/center_element.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Future<PortfolioData> data;

  Iterable<Widget> _getExpandedWidgets(List<Widget> widgets) sync* {
    for (Widget item in widgets) {
      yield Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: item,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data,
      builder: ((context, snapshot) {
        return snapshot.hasData
            ? CenterElement(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: List.from(
                              _getExpandedWidgets(
                                  (snapshot.data as PortfolioData).images),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text((snapshot.data as PortfolioData).text),
                          ),
                        ),
                      ],
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
              )
            : Container();
      }),
    );
  }
}
