import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snek_apptest/components/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.textUsed, this.onPressedAction});

  final String textUsed;
  final Function onPressedAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedAction,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Text(
          textUsed,
          style: kTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
