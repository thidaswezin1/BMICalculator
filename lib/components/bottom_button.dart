import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;
  BottomButton({this.buttonTitle,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}