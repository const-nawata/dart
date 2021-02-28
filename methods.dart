//------------------------------------------------------------------------------
//    Constant constructors
//------------------------------------------------------------------------------
class ImmutablePoint{
  final num x, y;
  const ImmutablePoint(this.x, this.y);
}

//------------------------------------------------------------------------------
//    Factory constructor. Can be retrieved from cache. 23:30
//------------------------------------------------------------------------------
class Logger{
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name){
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
  Logger._internal(this.name){
    print('Call Constructor. ${this.name}');
  }
}

//------------------------------------------------------------------------------
//    Instanse Methods, Getters and Setters. 27:05
//------------------------------------------------------------------------------
class Paladin{
  num atack;
  num defense;
  num lightPower;


  Paladin(this.atack, this.defense) : lightPower = 7;

  num superLightAtack(){
    return atack + lightPower -2;
  }

//   @override

//   String toString() => 'Paladin1 ([$role]): level=[$level], atack=[$atack], defense=[$defense]';
}


class Rectangle{
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;

  num get bottom => top + height;
  set bottom(num value) => top = value - height;

}

//  Main function ----------------------------------------------------------------
void main() {

//    Constant constructors
  ImmutablePoint p1 = const ImmutablePoint(1,1);
  ImmutablePoint p2 = const ImmutablePoint(1,1);

  print(p1 == p2);

//    Factory constructor.
  Logger logger1 = Logger('Log');
  Logger logger2 = Logger('Log');
  Logger logger3 = Logger('Log!');

  print(logger1);
  print(logger2);
  print(logger3);

//    Instanse Methods, Getters and Setters.
  var hero = Paladin(12 , 20);
  print(hero.superLightAtack());

  Rectangle rect = Rectangle(10, 15, 20, 40);
  print(rect.left);
  rect.right = 12;
  print(rect.left);
}

//  print(value);