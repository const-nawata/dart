import 'dart:math';

class Paladin{
  num level;
  num atack;
  num defense;
  String role = 'Undefined';

//   Paladin( num level, num atack, num defense){
//     this.level = level;
//     this.atack = atack;
//     this.defense = defense;
//   }

//   Paladin({this.level, this.atack=10, this.defense=11});

  Paladin.lighter({this.level, this.atack=10, this.defense=11}){
    this.role = 'Lighter';
  }

  Paladin.darker({this.level}){
    this.atack = 25;
    this.defense = 45;
    this.role = 'Darker';
  }

  @override

  String toString() => 'Paladin ([$role]): level=[$level], atack=[$atack], defense=[$defense]';
}

class LightWarrior extends Paladin {
  num lightPower;

  LightWarrior.lighter({this.lightPower}) : super.lighter(level: 1, atack: 5){
    this.role = 'LWarrior';
  }

  LightWarrior() : super.lighter(level: _epicLevelRandom()); // Parameter value must be STATIC ONLY!
  static int _epicLevelRandom() => Random().nextInt(100); // Private method.

  @override
//   String toString(){
//     return '${super.toString()} -> lightPower: lightPower=[$lightPower]';
//   }

  String toString() =>
      (null != lightPower)
          ? '${super.toString()} -> lightPower: lightPower=[$lightPower]'
          : '${super.toString()}';
}

//  Main function ----------------------------------------------------------------
void main() {
  Paladin newHero = Paladin.lighter(level: 5);
  Paladin darkHero = Paladin.darker(level: 1);

  LightWarrior lightW = LightWarrior.lighter(lightPower: 17);
  LightWarrior lightF = LightWarrior.lighter();

  print(newHero);
  print(darkHero);

  print(lightW);
  print(lightF);

  List <int> tm = [1,3,5,7];
  print(tm[3]);
}

//  print(value);
  
  
