import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sunshine/constants.dart';

import 'app_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff2150a8),
                  Colors.indigo,
                  Color(0xff8659b4),
                  Color(0xfff803ff),
                ],
                // Color(0xff7a6be6),
                // Color(0xff06d6e0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 90.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   Icons.wb_sunny_outlined,
                  //   color: Colors.white,
                  //   size: 50.0,
                  // ),
                  Image(
                    width: 200.0,
                    height: 170.0,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'S O L E',
                    style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                        fontFamily: 'Lobster'),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AppNavigation();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                      child: Text(
                        'set location',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Calibri',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
