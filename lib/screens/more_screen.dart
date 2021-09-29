import 'package:flutter/material.dart';

import '../constants.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [true, false, false, false];
    //List.generate(4, (_) => false)
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  ToggleButtons(
                    color: Colors.black,
                    isSelected: isSelected,

                    fillColor: basicColor,
                    // selectedBorderColor: basicColor,
                    // verticalDirection: VerticalDirection.up,
                    // disabledColor: Colors.white,
                    selectedColor: Colors.white,

                    textStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    splashColor: basicColor,

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Temperature', textAlign: TextAlign.center,

                          // style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Humidity', textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Wind', textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cloud', textAlign: TextAlign.center),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < isSelected.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            isSelected[buttonIndex] = true;
                          } else {
                            isSelected[buttonIndex] = false;
                          }
                        }
                      });
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text('Today\'s Temperature ',
                      style: TextStyle(fontSize: 26.0)),
                  Text('21 °C',
                      style: TextStyle(fontSize: 72.0, color: basicColor)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
