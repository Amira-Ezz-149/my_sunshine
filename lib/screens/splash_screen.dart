import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          body: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/home.jpg'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'You Are My Sunshine',
            style: TextStyle(fontSize: 30.0,
            color: Color(0xff0981BC),
            fontFamily: 'Lobster'
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color(0xff0981BC),),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:15.0,
              horizontal: 10.0),
              child: Text('set location', style: TextStyle(fontSize: 20.0,            fontFamily: 'Lobster'
              ),),
            ),

          ),
        ],
      )),
    );
  }
}
