import 'package:flutter/material.dart';

class ButtonHeaderWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonHeaderWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ButtonWidget(
        text: text,
        onClicked: onClicked,
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onClicked,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontFamily: 'OpenSans'),
        ),
      );
}
