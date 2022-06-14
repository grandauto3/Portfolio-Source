import 'package:flutter/material.dart';
import 'package:portfolio/core/portfolio_data.dart';
import '../components/home_page_entry.dart';
import '../components/center_element.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.onEntryClicked,
  }) : super(key: key);

  final void Function(int id, Future<PortfolioData> data) onEntryClicked;

  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        const Text('Portfolio'),
        HomepageEntry(
          title: 'Unity Level Editor',
          onPressed: () {
            onEntryClicked(
              0,
              PortfolioData.getData('json/test_data.json'),
            );
          },
        ),
        HomepageEntry(
          title: 'GodArena',
          onPressed: () {
            onEntryClicked(
              1,
              PortfolioData.getData('assets/json/test_data.json'),
            );
          },
        ),
        HomepageEntry(
          title: 'Tents and Trees (WIP)',
          onPressed: () {
            onEntryClicked(
              2,
              PortfolioData.getData('assets/json/test_data.json'),
            );
          },
        ),
        HomepageEntry(
          title: 'Rehago',
          onPressed: () {
            onEntryClicked(
              3,
              PortfolioData.getData('assets/json/test_data.json'),
            );
          },
        ),
        HomepageEntry(
          title: 'Portfolio source',
          onPressed: () {
            onEntryClicked(
              4,
              PortfolioData.getData('assets/json/test_data.json'),
            );
          },
        ),
      ],
    );
  }
}
