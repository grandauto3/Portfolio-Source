import 'package:flutter/material.dart';
import '../components/home_page_entry.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Portfolio'),
                HomepageEntry(
                  title: 'Unity Level Editor',
                  onPressed: () {},
                ),
                HomepageEntry(
                  title: 'GodArena',
                  onPressed: () {},
                ),
                HomepageEntry(
                  title: 'Tents and Trees (WIP)',
                  onPressed: () {},
                ),
                HomepageEntry(
                  title: 'Rehago',
                  onPressed: () {},
                ),
                HomepageEntry(
                  title: 'Portfolio source',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
