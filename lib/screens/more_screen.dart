import 'package:flutter/material.dart';
import 'package:my_sunshine/tools/toggle_buttons_provider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  // bool visible = false;

  @override
  Widget build(BuildContext context) {
    //List.generate(4, (_) => false)
    // bool visible = Provider.of<ToggleButtonsProvider>(context).visible;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SingleChildScrollView(
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
                        borderRadius: BorderRadius.circular(3.0),
                        splashColor: basicColor,
                        children: (value.visible == false
                            ? toggleTextListWithoutCloud
                            : toggleTextList),
                        onPressed: (int index) {
                          value.switchButtonInMoreScreen(index);
                          //
                          // setState(() {
                          //
                          // });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 85.0,
                    ),
                    Text('Today\'s Temperature ',
                        style: TextStyle(fontSize: 26.0)),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('21 °C',
                        style: TextStyle(fontSize: 72.0, color: basicColor)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
