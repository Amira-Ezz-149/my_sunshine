import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_sunshine/model/screens_data.dart';
import 'package:my_sunshine/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => ChangeNotifierProvider(
        create: (BuildContext context) => ScreensData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // primarySwatch: Color(0xff0981BC),
              ),
          home: SplashScreen(),
        ),
      ),
    );
  }
}
