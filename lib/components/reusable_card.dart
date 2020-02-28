import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snek_apptest/components/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.textUsed});

  final String textUsed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        textUsed,
        style: kTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
