import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_bmi_2_dsc_c4/components/rounded_icon_button.dart';
import '../constants.dart';
import 'package:animated_bmi_2_dsc_c4/components/bottom_button.dart';
import 'package:animated_bmi_2_dsc_c4/screens/result_page.dart';
import 'package:animated_bmi_2_dsc_c4/calculator_brain.dart';
import 'package:animated_bmi_2_dsc_c4/constants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double fieldWeightValue = 60;
  double fieldHeightValue = 60;
  int fieldAgeValue = 29;

  int _value = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(),
      appBar: AppBar(

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'BMI Calculator',
                style: kBMITextStyle,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Gender',
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //********  male
                //***********************************

             Row(
               children: [
                 Radio(
                     activeColor: Colors.orange,
                     value: 1, groupValue: _value,onChanged: (value){
                   setState(() {
                     _value = value;
                   });
                 }),
                 Row(
                   children: [
                     Icon(FontAwesomeIcons.male, size: 20, ),
                     Text('Male'),
                   ],
                 ),
               ],
             ),

               SizedBox(width: 80.0),

                //*************  female
                //*************************************

              Row(
                children: [
                  Radio(
                      activeColor: Colors.orange,focusColor: Colors.orange,splashRadius: 10.0,
                      value: 2, groupValue: _value,onChanged: (value){
                    setState(() {
                      _value = value;
                    });
                  }),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.female, size: 20,),
                      Text('Female'),
                    ],
                  ),

                ],
              ),
              ],
            ),
            SizedBox(height: 30.0,),
            //************************** second section            Weight
            //********************************************
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Weight',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            //*********************************** slider for weight
                            //***********************************************************
                            Slider(
                                value: fieldWeightValue,
                                min: 30,
                                max: 150,
                                activeColor: Colors.orange,
                                inactiveColor: Colors.grey.shade300,
                                divisions: 200,
                                label: fieldWeightValue.round().toString(),
                                onChanged: (val) {
                                  setState(() {
                                    print(fieldWeightValue);
                                    fieldWeightValue = val;
                                  });
                                })
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'kg',
                              style: kMeasuringUnit,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            //************************** third section             Height
            //**************************************************
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Height',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Slider(
                                value: fieldHeightValue,
                                min: 0,
                                max: 200,
                                activeColor: Colors.orange,
                                inactiveColor: Colors.grey.shade300,
                                divisions: 200,
                                label: fieldHeightValue.round().toString(),
                                onChanged: (val) {
                                  setState(() {
                                    print(fieldHeightValue);
                                    fieldHeightValue = val;
                                  });
                                })
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'cm',
                              style: kMeasuringUnit,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            //****************************** fourth section       Age
            //**********************************************
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Age',
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: RoundedIconButton(
                          icon: Icons.remove,
                          onPress: () {
                            setState(() {
                              fieldAgeValue--;
                            });
                          },
                        ),
                      ),
                      Expanded(
                          child: Center(
                              child: Text(fieldAgeValue.toString(),
                                  style: kFieldValueStyle))),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: RoundedIconButton(
                          icon: Icons.add,
                          onPress: () {
                            setState(() {
                              fieldAgeValue++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            BottomButton(
              onPress: () {
                CalculatorBrain calc = CalculatorBrain(
                    weight: fieldWeightValue, height: fieldHeightValue);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBmi(),
                      interpretation: calc.getInterpretation(),
                      resultText: calc.getResult(),
                    ),
                  ),
                );
              },
              bottomButtonText: 'CALCULATE',
            ),

          ],
        ),
      ),
    );
  }
}
