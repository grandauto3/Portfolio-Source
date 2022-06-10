import 'package:flutter/material.dart';
import '../components/home_page_entry.dart';
import '../components/center_element.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        const Text('Portfolio'),
        HomepageEntry(
          title: 'Unity Level Editor',
          onPressed: () {
          },
        ),
        HomepageEntry(
          title: 'GodArena',
          onPressed: () {
          },
        ),
        HomepageEntry(
          title: 'Tents and Trees (WIP)',
          onPressed: () {
          },
        ),
        HomepageEntry(
          title: 'Rehago',
          onPressed: () {
          },
        ),
        HomepageEntry(
          title: 'Portfolio source',
          onPressed: () {
          },
        ),
      ],
    );
  }
}
