import 'package:flutter/material.dart';
import 'package:my_sunshine/tools/toggle_buttons_provider.dart';
import 'package:provider/provider.dart';
import 'package:my_sunshine/widgets/chart_widget.dart';

import '../constants.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Consumer<ToggleButtonsProvider>(
              builder: (context, value, child) => Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: ToggleButtons(
                      color: Colors.black,
                      isSelected: (value.visible == false
                          ? value.isSelectedWithoutCloudMS
                          : value.isSelectedMS),
                      fillColor: basicColor,
                      selectedColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 18.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      splashColor: basicColor,
                      children: (value.visible == false
                          ? toggleTextListWithoutCloud
                          : toggleTextList),
                      onPressed: (int index) {
                        value.switchButtonInMoreScreen(index);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Text('Today\'s Temperature ',
                      style: TextStyle(fontSize: 26.0, fontFamily: 'Lobster')),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('21 °C',
                      style: TextStyle(
                          fontSize: 72.0,
                          fontFamily: 'Lobster',
                          color: basicColor)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: ChartWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
