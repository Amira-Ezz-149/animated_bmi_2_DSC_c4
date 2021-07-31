import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final double weight;
  final double height;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'your weight is more than normal, you should exercise more.';
    } else if (_bmi > 18.5) {
      return 'your weight is normal ^_^.';
    } else {
      return 'your weight is less than normal, you should eat more!';
    }
  }
}
