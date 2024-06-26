import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/theam/dark_mode.dart';
import 'package:music_player/theam/light_mode.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData _themeData = lightmode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkmode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightmode){
      themeData = darkmode;
    }else{
      themeData = lightmode;
    }
  }

}