import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> toggleTextList = [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(
      'Pressure',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Text(
      'Cloud',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
];
List<Widget> toggleTextListWithoutCloud = [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Text(
      'Pressure',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
];

Color basicColor = Colors.indigo;
Decoration kButtonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(40.0),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff2150a8),
        Color(0xff8659b4),
      ],
    ));
