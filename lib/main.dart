import 'package:flutter/material.dart';
import 'package:my_sunshine/model/screens_data.dart';
import 'package:my_sunshine/screens/app_navigation.dart';
import 'package:my_sunshine/screens/splash_screen.dart';
import 'package:my_sunshine/tools/toggle_buttons_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ScreensData(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ToggleButtonsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: AppNavigation(),
      ),
    );
  }
}
