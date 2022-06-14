import 'package:flutter/material.dart';
import 'package:portfolio/core/portfolio_data.dart';
import '../components/center_element.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final PortfolioData data;

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
    return CenterElement(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: List.from(
                    _getExpandedWidgets(data.images),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data.text),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
