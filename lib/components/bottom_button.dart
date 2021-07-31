import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPress, this.bottomButtonText});

  Function onPress;
  String bottomButtonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(5.0),
        ),
        width: double.infinity,
        height: 50.0,
        child: Center(
          child: Text(bottomButtonText, style: kBottomTextStyle),
        ),
      ),
    );
  }
}
