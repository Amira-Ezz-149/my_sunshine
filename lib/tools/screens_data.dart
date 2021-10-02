import 'package:flutter/material.dart';
import 'package:my_sunshine/screens/location_screen.dart';
import 'package:my_sunshine/screens/more_screen.dart';
import 'package:my_sunshine/screens/sunshine_screen.dart';

class ScreensData extends ChangeNotifier {
  int _currantTap = 0;

  List<Widget> screens = [LocationScreen(), SunshineScreen(), MoreScreen()];
  set currantTap(int tap) {
    this._currantTap = tap;
    notifyListeners();
  }

  int get currantTap => this._currantTap;
  Widget get currantScreen => this.screens[this._currantTap];
}
