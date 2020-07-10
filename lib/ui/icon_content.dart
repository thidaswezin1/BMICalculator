import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xff8d8e98)
);
class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconContent({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label,
          style: labelTextStyle,)
      ],
    );
  }
}