import 'package:flutter/material.dart';
import '../components/reusable_card.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Snek Game')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: ReusableCard(
                  textUsed: 'Instructions Here!',
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(textUsed: 'SNEK'),
                ),
                Expanded(
                  child: ReusableCard(textUsed: 'GUN'),
                ),
                Expanded(
                  child: ReusableCard(textUsed: 'WATER'),
                ),
              ],
            ),
            Container(
              child: ReusableCard(
                textUsed: 'Score HERE!',
              ),
            )
          ],
        ));
  }
}
