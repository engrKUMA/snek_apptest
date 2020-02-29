import 'package:flutter/material.dart';
import 'package:snek_apptest/snek_brain.dart';

import '../components/reusable_card.dart';

enum Weapon { snek, gun, water }

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Weapon weaponSelected;

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
            Expanded(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        textUsed: 'User Weapon Here!',
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        textUsed: 'CPU Weapon Here!',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    textUsed: 'SNEK',
                    onPressedAction: () {
                      setState(() {
                        weaponSelected = Weapon.snek;
                        SnekBrain(weaponSelected: weaponSelected).runSnek();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    textUsed: 'GUN',
                    onPressedAction: () {
                      setState(() {
                        weaponSelected = Weapon.gun;
                        SnekBrain(weaponSelected: weaponSelected).runSnek();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    textUsed: 'WATER',
                    onPressedAction: () {
                      setState(() {
                        weaponSelected = Weapon.water;
                        SnekBrain(weaponSelected: weaponSelected).runSnek();
                      });
                    },
                  ),
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
