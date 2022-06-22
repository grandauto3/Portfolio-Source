import 'package:flutter/services.dart';

class IOHandler {
  static Future<String> getStringById(int id) async {
    final tmpMap = {
      0: 'md/unity_level_editor.md',
      1: 'md/godarena.md',
      2: 'md/tents_and_trees.md',
      3: 'md/rehago.md',
    };

    return await _tryCorrectPath(tmpMap[id]!);
  }

  static Future<String> getStringData(String path) async {
    return await _tryCorrectPath(path);
  }

  static Future<String> _tryCorrectPath(String path) async {
    try {
      return await rootBundle.loadString(path);
    } catch (e) {
      return await rootBundle.loadString('assets/$path');
    }
  }
}
