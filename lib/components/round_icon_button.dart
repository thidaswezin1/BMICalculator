import 'package:flutter/material.dart';
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