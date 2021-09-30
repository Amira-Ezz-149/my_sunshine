import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../component.dart';
import '../constants.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController longController=TextEditingController();

  TextEditingController latController=TextEditingController();
  String latitude;
  String longitude;
  String location;
  void getCurrentLocation()async{
     Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
          var lat=position.latitude;
          var long=position.longitude;
          setState(() {
            latitude='$lat';
            longitude='$long';
            location= 'latitude : $latitude ,\n longitude : $longitude ';
          });
    }).catchError((e){
      print(e.toString());
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildRow(title: 'Longitude',controller: longController),
            buildRow(title: 'Latitude',controller: latController),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: basicColor,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Lobster'),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Text('------- Or Know your location -------',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,fontFamily: 'Lobster')),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: basicColor,
              ),
              onPressed: () {
                getCurrentLocation();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Text(
                  'Get Location',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Lobster'),
                ),
              ),
            ),
            SizedBox(height: 50,),
            location != null? Text(location,style: TextStyle(
                color: Colors.black,fontSize: 20.0,fontFamily: 'Lobster'
            )):Text('')
          ],
        ),
      ),
    );
  }
}
