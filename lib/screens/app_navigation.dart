import 'package:flutter/material.dart';
import 'package:my_sunshine/tools/screens_data.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class AppNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreensData>(
      builder: (context, model, child) => Scaffold(
        body: model.currantScreen,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currantTap,
          onTap: (newIndex) {
            model.currantTap = newIndex;
          },
          fixedColor: basicColor,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                ),
                label: 'Location',
                activeIcon: Icon(
                  Icons.location_on,
                  color: basicColor,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wb_sunny_outlined,
                ),
                label: 'Sunshine',
                activeIcon: Icon(
                  Icons.wb_sunny,
                  color: basicColor,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_outlined,
                ),
                label: 'More',
                activeIcon: Icon(
                  Icons.menu,
                  color: basicColor,
                )),
          ],
        ),
      ),
    );
  }
}
