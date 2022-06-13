import 'package:flutter/material.dart';
import '../components/home_page_entry.dart';
import '../components/center_element.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.onEntryClicked,
  }) : super(key: key);

  final void Function(int) onEntryClicked;

  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        const Text('Portfolio'),
        HomepageEntry(
          title: 'Unity Level Editor',
          onPressed: () {
            onEntryClicked(0);
          },
        ),
        HomepageEntry(
          title: 'GodArena',
          onPressed: () {
            onEntryClicked(1);
          },
        ),
        HomepageEntry(
          title: 'Tents and Trees (WIP)',
          onPressed: () {
            onEntryClicked(2);
          },
        ),
        HomepageEntry(
          title: 'Rehago',
          onPressed: () {
            onEntryClicked(3);
          },
        ),
        HomepageEntry(
          title: 'Portfolio source',
          onPressed: () {
            onEntryClicked(4);
          },
        ),
      ],
    );
  }
}
