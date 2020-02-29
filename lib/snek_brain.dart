import 'dart:math';

import 'package:snek_apptest/View/game_page.dart';

class SnekBrain {
  SnekBrain({this.weaponSelected});

  final weaponSelected;
  String usedWeapon;
  int userWeapon;
  int cpuWeapon;
  String matchResult;

  int _convertWeapon() {
    usedWeapon = weaponSelected.toString();

    if (usedWeapon == Weapon.snek.toString()) {
      userWeapon = 1;
    }
    if (usedWeapon == Weapon.gun.toString()) {
      userWeapon = 2;
    }
    if (usedWeapon == Weapon.water.toString()) {
      userWeapon = 3;
    }
    return userWeapon;
  }

  int _cpuRoll() {
    int cpuWeapon = Random().nextInt(3) + 1;
//    print(cpuWeapon);
    return cpuWeapon;
  }

  String _matchUp() {
    int forCPU = _cpuRoll();
    int forUser = _convertWeapon();

    //user challenged
//    forUser > forCPU ? uScore++ : cScore++;
//    forUser < forCPU ? uScore++ : cScore++;
//    forUser == forCPU ? draw++ : null;

    print('user Used $forUser');
    print('CPU Used $forCPU');

    if (forUser > forCPU) {
      return matchResult = 'User Won';
    }
    if (forUser < forCPU) {
      return matchResult = 'CPU Won';
    } else {
      return matchResult = 'DRAW!';
    }
  }

  void runSnek() {
    print(_matchUp());
  }
}
