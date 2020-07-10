import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage({this.bmiResult,this.resultText,this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )

                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
