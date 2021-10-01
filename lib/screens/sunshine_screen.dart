import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_sunshine/constants.dart';
import 'package:my_sunshine/widgets/chart_widget.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Start date',
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: 'Lobster',
                    ),
                  ),
                  SizedBox(
                    width: 18.0.w,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: isSelected[newIndex] == true
                        ? DatePickerWidget()
                        : DropdownWidget(),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'End date',
                    style: TextStyle(fontSize: 16.0, fontFamily: 'Lobster'),
                  ),
                  SizedBox(
                    width: 18.0.w,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 0.3),
                      borderRadius: BorderRadius.circular(10),
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
                width: 1.sw,
                child: Center(
                  child: ToggleButtons(
                    isSelected: isSelected,
                    selectedColor: Colors.white,
                    color: Colors.black,
                    fillColor: basicColor,
                    borderRadius: BorderRadius.circular(10),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text('Daily',
                            style: TextStyle(
                                fontSize: 14.sp, fontFamily: 'OpenSans')),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text('Weekly',
                            style: TextStyle(
                                fontSize: 14.sp, fontFamily: 'OpenSans')),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text('Monthly',
                            style: TextStyle(
                                fontSize: 14.sp, fontFamily: 'OpenSans')),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Text('Annual',
                            style: TextStyle(
                                fontSize: 14.sp, fontFamily: 'OpenSans')),
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
                height: 25.0,
              ),
              Center(
                child: Text(
                  'Total Energy Produced By The Sun',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'kw-hr/m^2/day',
                        style: TextStyle(
                          color: Color(0xff67727d),
                          fontSize: 16,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Container(
                        child: ChartWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
