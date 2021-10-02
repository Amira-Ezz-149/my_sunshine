import 'package:flutter/material.dart';

List<Widget> toggleTextList = [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Wind',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Cloud',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
];
List<Widget> toggleTextListWithoutCloud = [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Temperature',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Humidity',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      'Wind',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  ),
];

Color basicColor = Color(0xff0981BC);
