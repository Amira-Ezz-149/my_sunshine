import 'package:flutter/material.dart';

class ToggleButtonsProvider extends ChangeNotifier {
  List<bool> isSelectedSS = [true, false, false, false];
  int newIndex = 0;

  List<bool> isSelectedMS = [true, false, false, false];
  List<bool> isSelectedWithoutCloudMS = [true, false, false];
  bool visible = false;
  void removeCloud(bool v) {
    this.visible = v;
    print(visible);
    notifyListeners();
  }

  void switchButtonInSunshineScreen(int newIndex) {
    for (int index = 0; index < isSelectedSS.length; index++) {
      if (index == newIndex) {
        isSelectedSS[index] = true;
        index == 0 ? removeCloud(false) : removeCloud(true);
      } else {
        isSelectedSS[index] = false;
      }
    }
    notifyListeners();
  }

  void switchButtonInMoreScreen(int index) {
    int length;
    visible == false
        ? length = isSelectedWithoutCloudMS.length
        : length = isSelectedMS.length;

    for (int buttonIndex = 0; buttonIndex < length; buttonIndex++) {
      if (index == buttonIndex) {
        visible == false
            ? isSelectedWithoutCloudMS[buttonIndex] = true
            : isSelectedMS[buttonIndex] = true;
      } else {
        visible == false
            ? isSelectedWithoutCloudMS[buttonIndex] = false
            : isSelectedMS[buttonIndex] = false;
      }
    }
    notifyListeners();
  }
}
