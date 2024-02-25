import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String langCode = "en";
  ThemeMode theme = ThemeMode.light;
  changeLang(String code) {
    langCode = code;
    notifyListeners();
  }
  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }
  String getBgImagePath() {
    if (theme == ThemeMode.light) {
      return "assets/images/bg.png";
    } else {
      return "assets/images/bg_dark.png";
    }
  }
  String getSebhaHeadPath() {
    if (theme == ThemeMode.light) {
      return "assets/images/head_sebha_logo.png";
    } else {
      return "assets/images/head_sebha_dark.png";
    }
  }
  String getSebhaBodyPath() {
    if (theme == ThemeMode.light) {
      return "assets/images/body_sebha_logo.png";
    } else {
      return "assets/images/body_sebha_dark.png";
    }
  }
}
