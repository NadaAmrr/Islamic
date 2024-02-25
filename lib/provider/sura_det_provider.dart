import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetProvider extends ChangeNotifier {
  List<String> verses = [];
  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.trim().split("\n");
    // List<String> lines2 = [];
    // for (int i = 0; i < lines.length ;i++) {
    //   lines2 = lines[0].trim().split("\n");
    // }

    verses = lines;
    notifyListeners();
  }
}
