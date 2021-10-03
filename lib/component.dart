import 'package:flutter/material.dart';

Widget buildRow({TextEditingController controller, String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Text(
        //   title,
        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,fontFamily: 'Lobster'),
        // ),
        Container(
          height: 45,
          width: 250,
          child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.indigo,
              cursorHeight: 25.0,
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  ),
                  labelStyle: TextStyle(color: Colors.indigo),
                  labelText: title,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(color: Colors.indigo)))),
        ),
      ],
    ),
  );
}
