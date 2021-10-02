import 'package:flutter/material.dart';
import 'package:my_sunshine/constants.dart';
import 'package:my_sunshine/tools/toggle_buttons_provider.dart';
import 'package:my_sunshine/widgets/date_picker.dart';
import 'package:my_sunshine/widgets/dropdown_widget.dart';
import 'package:provider/provider.dart';

class SunshineScreen extends StatefulWidget {
  @override
  State<SunshineScreen> createState() => _SunshineScreenState();
}

class _SunshineScreenState extends State<SunshineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Consumer<ToggleButtonsProvider>(
            builder: (context, model, child) => Column(
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
                      child: model.isSelectedSS[model.newIndex] == true
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
                      child: model.isSelectedSS[model.newIndex] == true
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
                      isSelected: model.isSelectedSS,
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
                      onPressed: (index) {
                        model.switchButtonInSunshineScreen(index);
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
    ));
  }
}
