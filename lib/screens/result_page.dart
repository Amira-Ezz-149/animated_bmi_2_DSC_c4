import 'package:animated_bmi_2_dsc_c4/components/bottom_button.dart';
import 'package:animated_bmi_2_dsc_c4/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
 bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: kBMITextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your Result',
                  style: kYourResultTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                selected = !selected;

                });
              },
              child: AnimatedContainer(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    border: Border.all(
                      color: selected ? Colors.orange : Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                margin: EdgeInsets.all(20),
                padding: selected ? EdgeInsets.all(25.0) : EdgeInsets.all(15.0),
                width: selected ? 250 : 220,
                height: selected ? 300 : 250,
                alignment: selected ? Alignment.center : Alignment.topRight,
                duration: Duration(seconds: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                       widget.resultText.toUpperCase(),style: kResultTextStyle,
                      ),
                      Text(
                       widget.bmiResult, style: kBMITextStyle,

                      ),
                      Text(
                      widget.interpretation,style: kInterpretation,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(child: Text('please click on the container', style: TextStyle(color: Colors.white),),),
            SizedBox(
              height: 10,
            ),
            BottomButton(
              bottomButtonText: "RE-CALCULATED",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
