import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_sunshine/tools/screens_data.dart';

import '../component.dart';
import '../constants.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  TextEditingController longController = TextEditingController();

  TextEditingController latController = TextEditingController();
  String latitude;
  String longitude;
  String location;
  void getCurrentLocation() async {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      var lat = position.latitude;
      var long = position.longitude;
      setState(() {
        latitude = '$lat';
        longitude = '$long';
        latController.text = latitude;
        longController.text = longitude;
        location = 'latitude : $latitude ,\n longitude : $longitude ';
      });
    }).catchError((e) {
      print(e.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRow(title: 'Longitude', controller: longController),
            buildRow(title: 'Latitude', controller: latController),
            SizedBox(
              height: 50,
            ),
            DecoratedBox(
              decoration: kButtonStyle,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreensData.screens[1]));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Lobster'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('------- Or use your current location -------',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: 'Lobster')),
            SizedBox(
              height: 50,
            ),
            DecoratedBox(
              decoration: kButtonStyle,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0))),
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
            ),
            SizedBox(
              height: 50,
            ),
            // location != null
            //     ? Text(location,
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20.0,
            //             fontFamily: 'Calibri'))
            //     : Text('')
          ],
        ),
      ),
    );
  }
}
