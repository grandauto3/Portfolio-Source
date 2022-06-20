import 'package:flutter/services.dart';

class IOHandler {
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
