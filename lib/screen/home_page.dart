import 'file:///C:/MyProjects/FlutterProjects/BMICalculator/bmi_calculator/lib/screen/results_page.dart';
import 'package:bmi_calculator/calculate_brain.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/bottom_button.dart';
import '../components/resuable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/round_icon_button.dart';

enum Gender{
  male,
  female
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;
  int height = 180;
  int weight = 100;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender==Gender.male?kActiveCardColor:kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                  )
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender==Gender.female?kActiveCardColor:kInactiveCardColor,
                      cardChild:IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'HEIGHT',
                        style: kLabelTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle
                          ),
                        Text(
                            'cm',
                            style: kLabelTextStyle
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xff8d8e98),
                          thumbColor: Color(0xffeb1555),
                          overlayColor:Color(0x29eb1555),
                          activeTrackColor: Colors.white,
                          thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0
                        )
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220.0,
                        min: 120.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              'WEIGHT',
                              style: kLabelTextStyle
                          ),
                          Text(
                              weight.toString(),
                              style: kNumberTextStyle
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundButtonIcon(
                                  onPress: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  iconData: FontAwesomeIcons.minus
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundButtonIcon(
                                  onPress: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  iconData: FontAwesomeIcons.plus,
                                )
                              ],
                          )
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          'AGE',
                          style: kLabelTextStyle
                      ),
                      Text(
                          age.toString(),
                          style: kNumberTextStyle
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundButtonIcon(
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                              iconData: FontAwesomeIcons.minus
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundButtonIcon(
                            onPress: (){
                              setState(() {
                                age++;
                              });
                            },
                            iconData: FontAwesomeIcons.plus,
                          )
                        ],
                      )
                    ],
                  ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalculateBrain cal = CalculateBrain(height: height,weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>
                      ResultPage(
                        bmiResult: cal.calculateBMI(),
                        resultText: cal.getResult(),
                        interpretation: cal.getInterpretation(),
                      )
                  )
              );
            },
          )
        ],
      )
    );
  }
}






