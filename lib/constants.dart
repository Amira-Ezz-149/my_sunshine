import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> toggleTextList = [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Wind',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Cloud',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
];
List<Widget> toggleTextListWithoutCloud = [
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Text(
      'Wind',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
    ),
  ),
];

Color basicColor = Color(0xff0981BC);
