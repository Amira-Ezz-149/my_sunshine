import 'package:flutter/material.dart';
import 'package:my_sunshine/model/screens_data.dart';
import 'screens/splash_screen.dart';
import 'package:my_sunshine/screens/app_navigation.dart';
import 'package:my_sunshine/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScreensData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // primarySwatch: Color(0xff0981BC),
            ),
        home: SplashScreen(),
      ),

    );
  }
}