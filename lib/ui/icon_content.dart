import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utility/constants.dart';
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
          style: kLabelTextStyle,)
      ],
    );
  }
}

class RoundButtonIcon extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  RoundButtonIcon({@required this.iconData,this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(iconData),
    );
  }
}
