import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'calculator_brain.dart';

class Results extends StatelessWidget {

  Results({this.calc});

  final CalculatorBrain calc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calc.getResult(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    calc.calculateBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    calc.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                           ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);

              },
              child: Container(
                child: Center(
                  child: Text(
                      'RE-CALCULATE',
                      style: kLargeButtonTextStyle
                  ),
                ),
                color: kBottomContainerColour,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBbottomContainerHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
