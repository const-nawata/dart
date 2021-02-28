// List of initializers.

class Paladin{
  num level;
  num atack;
  num defense;

  Paladin(int exp) :
        level = exp ~/ 10,   //Drop fractional part
        atack = exp + 10,
        defense = exp - 3 {
    print('Example of initializers: level=$level, atack=$atack, defense=$defense');
  }

//   @override

//   String toString() => 'Paladin ([$role]): level=[$level], atack=[$atack], defense=[$defense]';
}

class Paladin1{
  num atack;
  num defense;
  num classRating;


  Paladin1(atack, defense) :
        atack = atack,
        defense = defense,
        classRating = (atack + defense) * 10 / 2;

//   @override

//   String toString() => 'Paladin1 ([$role]): level=[$level], atack=[$atack], defense=[$defense]';
}

//  Перенаправление конструкторов
class Paladin2{
  num atack;
  num defense;

  Paladin2(this.atack, this.defense) ;
  Paladin2.darker(num atack) : this(atack, 5);

  @override
  String toString() => 'Paladin2 <atack: $atack, defense: $defense>';
}

//  Main function ----------------------------------------------------------------
void main() {
  Paladin p = Paladin(58);
  Paladin1 p1 = Paladin1(12, 20);
  Paladin2 p2 = Paladin2.darker(20);

  print(p1.classRating);
  print(p2);
}

//  print(value);


