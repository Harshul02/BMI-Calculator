import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton(this.buttonTitle, this.onTap);

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButton,)),
        color: activebottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}