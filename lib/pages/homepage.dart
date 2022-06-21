import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/home_page_entry.dart';
import '../components/center_element.dart';

typedef OnEntryClickedCallback = void Function(int id, String dataPath);

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.onEntryClicked,
  }) : super(key: key);

  final OnEntryClickedCallback onEntryClicked;

  int _getAge() {
    final now = DateTime.now();
    final birthday = DateTime(1996, 8, 17);
    //calculate age
    int age = now.year - birthday.year;

    // check if we are before the actual birthday
    final isMonthBefore = now.month < birthday.month;
    final isSameMonthDayBefore =
        now.month == birthday.month && now.day < birthday.day;

    if (isMonthBefore || isSameMonthDayBefore) {
      //if we are before the actual birthday we have to subtract a year
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        Text(
          '''
Hi, 
my name is Thilo Simmerlein and ${_getAge()} years old.
I am a Developer specialized in game development and software architecture.
This is my protfolio:
''',
          style: const TextStyle(fontSize: 29),
        ),
        HomepageEntry(
          title: 'Unity Level Editor',
          onPressed: () {
            onEntryClicked(
              0,
              'md/unity_level_editor.md',
            );
          },
        ),
        HomepageEntry(
          title: 'GodArena',
          onPressed: () {
            onEntryClicked(
              1,
              'md/godarena.md',
            );
          },
        ),
        HomepageEntry(
          title: 'Tents and Trees (WIP)',
          onPressed: () {
            onEntryClicked(
              2,
              'md/tents_and_trees.md',
            );
          },
        ),
        HomepageEntry(
          title: 'Rehago',
          onPressed: () {
            onEntryClicked(
              3,
              'md/rehago.md',
            );
          },
        ),
        HomepageEntry(
          title: 'Portfolio source',
          onPressed: () {
            launchUrl(
                Uri.parse('https://github.com/grandauto3/Portfolio-Source'));
          },
        ),
        // HomepageEntry(
        //   title: 'Test',
        //   onPressed: () {
        //     Beamer.of(context, root: true).beamToNamed('/test');
        //   },
        // ),
      ],
    );
  }
}
