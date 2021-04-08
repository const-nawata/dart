//------------------------------------------------------------------------------
//    Re-define operators. 38:53
//------------------------------------------------------------------------------
import 'dart:math';

class Vector{
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
}

//------------------------------------------------------------------------------
//    Non-implemented method. 41:15
//------------------------------------------------------------------------------
class DummyClass{
  @override
  void noSuchMethod(Invocation inv){
    print('Method "${inv.memberName}" was not implemented.');
  }
  void hello();

}

//------------------------------------------------------------------------------
//    Extension methods. 43:15
//------------------------------------------------------------------------------
extension NumberParsing on String{
  int parseInt(){
    return int.parse(this);
  }

  double parseDouble(){
    return double.parse(this);
  }

}

enum Color {red, green, blue, back}

mixin BasicFeaturesMixin on Paladin{ // "on" is used if mixim have to be used for Paladin inheritor only
  num strength = 5;
  num agility = 5;
  num stamina = 5;
  void recover() => print('Strength restoring.');
}

class Paladin{
  num defense = 15;
  void lightPower() => print('Epic strength');
}

class LightWarrior extends Paladin with BasicFeaturesMixin {
  num atack;
  LightWarrior(this.atack);
}


// Asinchromnic functions see from  1:12:24

//How to use generic types see ~ 1:02:00


typedef Compare<T>  = int Function(T a, T b);

int sort(int a, int c) => a - c;
int sort1(int a, int c, int b) => a - c + b;

//  Main function ----------------------------------------------------------------
void main() {

  print(sort is Compare<int>);
  print(sort1 is Compare<int>);


//  Re-define operators.
  Vector v1 = Vector(1,2);
  Vector v2 = Vector(3,4);


  Vector v  = v1+v2;
  print('(${v.x}, ${v.y})');            //    == then next:
  print('(${(v1+v2).x}, ${(v1+v2).y})');


//    Non-implemented method.
  var dmm = DummyClass();
  dmm.hello();


//    Extension methods.
  print('777'.parseInt());
  print('777.5548'.parseDouble());


  LightWarrior lw = LightWarrior(10);
  lw.lightPower();
  lw.recover();

  print('Strength: ${lw.strength}');
  print('Agility: ${lw.agility}');
  print('Stamina: ${lw.stamina}');


  var games = <String>['Game 1','Game 2','Game 3','Game 4','Game 3'];
  var uniqueTerm = <String>{'value1','value2','value3'};
  var pages =  <String, String>{
    'key1': 'Page 01',
    'key2': 'Page 02',
    'key3': 'Page 03'
  };

  var gameSet = Set<String>.from(games);
  print(games);
  print(games is List<String>);
  print(gameSet);

  var rng = new Random();
  print(rng.nextInt(2));
}

//  print(value);


