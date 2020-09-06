import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Bahot Jyada Mota he Kam Kha Jara. Haat Pair Hila';
    }
    else if(_bmi>18.5){
      return 'Tu ekdum sahi he !!';
    }
    else{
      return 'Sukade. Kamjori he tujhe kucch kha liya kar.';
    }
  }
}