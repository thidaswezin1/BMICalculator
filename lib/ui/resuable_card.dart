import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ReusableCard({@required this.color,this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 170.0,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: cardChild,
    );
  }
}