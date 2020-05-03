import 'dart:math';

class CalcBrain {
  CalcBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String description() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 23) {
      return 'You have a higher body weight than normal. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'Great! You look good';
    } else {
      return 'You have a lower body weight than normal. You can eat a bit more';
    }
  }
}
