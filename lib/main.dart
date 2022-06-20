import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'pages/app.dart';

void main() {
  Beamer.setPathUrlStrategy();
  runApp(const MyApp());
}
