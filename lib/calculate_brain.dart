import 'dart:math';

class CalculateBrain{
  final int height;
  final int weight;
  CalculateBrain({this.height,this.weight});

  double _bmi;
  String calculateBMI(){
     _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);  //to get single decimal 1 point
  }

  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    } else if(_bmi>18.5){
      return 'Normal';
    } else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if(_bmi>18.5){
      return 'You have a normal body weight. Good job!';
    } else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}