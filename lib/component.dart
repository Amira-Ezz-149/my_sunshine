import 'package:flutter/material.dart';

Widget buildRow({TextEditingController controller , String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,fontFamily: 'Lobster'),
        ),
        Container(
          height: 45,
          width: 250,
          child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              keyboardType: TextInputType.number),
        )
      ],
    ),
  );
}
