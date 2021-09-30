import 'package:flutter/material.dart';
import 'package:my_sunshine/constants.dart';
import 'package:my_sunshine/widgets/date_picker.dart';
import 'package:my_sunshine/widgets/dropdown_widget.dart';

class SunshineScreen extends StatefulWidget {
  @override
  State<SunshineScreen> createState() => _SunshineScreenState();
}

class _SunshineScreenState extends State<SunshineScreen> {
  List<bool> isSelected = [true, false, false, false];
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 51.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Start date',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 18.0,
                    ),
                    Container(
                      width: 140,
                      height: 36,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: isSelected[newIndex] == true
                          ? DatePickerWidget()
                          : DropdownWidget(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'End date',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 18.0,
                    ),
                    Container(
                      width: 140,
                      height: 36,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: isSelected[newIndex] == true
                          ? DatePickerWidget()
                          : DropdownWidget(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 27.0,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: ToggleButtons(
                      isSelected: isSelected,
                      selectedColor: Colors.white,
                      color: Colors.black,
                      fillColor: basicColor,
                      borderRadius: BorderRadius.circular(3),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Daily', style: TextStyle(fontSize: 14)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Weekly', style: TextStyle(fontSize: 14)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child:
                              Text('Monthly', style: TextStyle(fontSize: 14)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Annual', style: TextStyle(fontSize: 14)),
                        ),
                      ],
                      onPressed: (newIndex) {
                        setState(() {
                          for (int index = 0;
                              index < isSelected.length;
                              index++) {
                            if (index == newIndex) {
                              isSelected[index] = true;
                            } else {
                              isSelected[index] = false;
                            }
                          }
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
