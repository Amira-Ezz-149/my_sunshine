import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_sunshine/tools/toggle_buttons_provider.dart';
import 'package:my_sunshine/widgets/line_chart.dart';
import 'package:provider/provider.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Container(
            child: Consumer<ToggleButtonsProvider>(
              builder: (context, value, child) => Column(
                children: [
                  SizedBox(
                    height: 50.0.h,
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
                        fontSize: 18.0.sp,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
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
                    height: 60.0.h,
                  ),
                  Text('Today\'s Temperature ',
                      style: TextStyle(fontSize: 26.0, fontFamily: 'Lobster')),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Text('21 °C',
                      style: TextStyle(
                          fontSize: 60.0.sp,
                          fontFamily: 'Lobster',
                          color: basicColor)),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Expanded(
                    child: Container(
                      child: LineChart(),
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
