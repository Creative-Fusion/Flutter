
import 'dart:math';

class CalculatorBrain {

CalculatorBrain({this.height, this. weight});

final int height;
final int weight;

double _bmi;

String calculateBMI(){
  _bmi = weight / pow(height / 100, 2);
 return _bmi.toStringAsFixed(1);
}

String getResult(){
  if(_bmi>= 25){
    return 'overweighted';
      }
      else if (_bmi<= 25){
        return 'Normal';
      }
      else{
        return 'eat more';
      }
}
String getInterpretation(){
  if(_bmi>= 25){
    return 'You have a weight greater than normal weight.';
      }
      else if (_bmi<= 25){
        return 'You have a perfect weight.Please do maintain it.';
      }
      else{
        return 'Your weight is less than normal. So please eat more.';
      }
}
}