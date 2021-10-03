import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  final items = [
    1984,
    1985,
    1986,
    1987,
    1988,
    1989,
    1990,
    1991,
    1992,
    1993,
    1994,
    1995,
    1996,
    1997,
    1998,
    1999,
    2000,
    2001,
    2002,
    2003,
    2004,
    2005,
    2006,
    2007,
    2008,
    2009,
    2010,
    2011,
    2012,
    2013,
    2014,
    2015,
    2016,
    2017,
    2018,
    2019,
    2020,
    2021
  ];

  int value = 2021;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<int>(
        value: value,
        items: items.map(menuItem).toList(),
        onChanged: (value) => setState(() => this.value = value),
      ),
    );
  }

  DropdownMenuItem<int> menuItem(int item) => DropdownMenuItem(
        value: item,
        child: Text(
          item.toString(),
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'OpenSans',
            // color: Colors.white
          ),
        ),
      );
}
