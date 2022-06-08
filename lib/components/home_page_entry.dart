import 'package:flutter/material.dart';

class HomepageEntry extends StatelessWidget {
  const HomepageEntry({
    Key? key,
    required this.title,
    required this.onPressed,
    this.padding = 20,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: padding,
        ),
        SizedBox(
          width: 300,
          child: ListTile(
            onTap: onPressed,
            title: Center(child: Text(title)),
            tileColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
