// Function 32:41

void main() {
  void printValue(int value){
    print(value);
  }
  printValue(123);

  var list = [1,2,3];
  list.forEach(printValue);

  // The next two functions are equal
  list.forEach((value){
    print(value);
  });

  list.forEach((v)=>print(v));

  // Function was assigned to variable
  var toup  = (value) => '${value.toUpperCase()}';
  print(toup('codeandart'));

  // Named parameters. Use {}
  String getModel({String title, int value=0}){
    return '$title - ${value + 10}';
  }

  print(getModel(title: 'Model', value: 22));

  // Positional parameters. [] -> Means "optional"
  String hello(String name, String msg, [String device]){
    var result = '$name tells $msg';

    if(device != null){
      result = '$result by $device';
    }

    return result;
  }

  print(hello('Bob', 'good bye'));
  print(hello('Bob', 'good bye', 'Megaphone'));

  // Parameters by default
  String trueName({String name='Bob', bool correct=false}){
    return correct ? 'Name is $name' : 'Wrong name';
  }

  print(trueName());
  print(trueName(correct: true));
  print(trueName(name: 'John', correct: true));


  // Positional parameters by default. [] -> Means "optional"
  String hello2(String name, String msg, [String device='Dudka']){
    var result = '$name tells $msg';

    if(device != null){
      result = '$result by $device';
    }

    return result;
  }

  print(hello2('Bob', 'good bye'));
  print(hello2('Bob', 'good bye', 'Megaphone'));


  createListAndMap(
      {List<int> list = const[1,2,3],
        Map<String, String> games = const{
          'first': 'Tothic 2',
          'third': 'Witcher 3'
        }}){
    print('Default List: $list');
    print('Default Dictionary: $games');
  }

  createListAndMap();

  // Closures
  Function addFunction(num add){
    return (num i) => add + i;
  }

  var add2 = addFunction(2);
  var add4 = addFunction(4);

  print(add2(3));
  print(add4(3));

  // Collections

  var list = [1,2,3];

  List<int> values = [1,2,3,4,5,6,7,8];
  values.add(9);
  values.remove(3);

  print('$values - ${values.length}');

  List<int> constantList = const [1,2,3,4,5];

  // constantList.add(8); // Error


  var list1 = [1,2,3];
  var list2 = [4, ...list1];
  print('$list2 - ${list2.length}');

//------------------------------------------------------------------------------
  // Collections

  //Lists - Arrays -----------------------

  var list = [1,2,3];

  List<int> values = [1,2,3,4,5,6,7,8];
  values.add(9);
  values.remove(3);

  print('$values - ${values.length}');

  List<int> constantList = const [1,2,3,4,5];

  // constantList.add(8); // Error


  // spread
  var list1 = [1,2,3];
  var list2 = [4, ...list1];
  print('$list2 - ${list2.length}');

  // spread-nullable
  var nullableList;
  var list3 = [1, ...?nullableList];
  print(list3);

// use "if"
  bool permisson = false;
  var nav = ['home', 'about', if(permisson) 'admin'];
  print(nav);

  // use "for"
  List<int> intList = [1,2,4,5,6,7];
  List<String> strList = ['>0', for(var i in intList) '>$i'];
  print(strList);


  // Sets -----------------------

  var games = {'Game 1','Game 2','Game 3','Game 4','Game 5'};
  var names = <String>{};
//  Set <String> names2 = {};
//  var names = {}; // Not stes! It is dictionaries.

  games.add('Geme 6');
  games.addAll({'Geme 7','Geme 8','Geme 9'});
  print(games);

  final constantGames = const {'Geme 7','Geme 8','Geme 9'};
  // constantGames.add('Game 10'); // Error
  // In the same way works "spread", "spread-nullable", "if" and "for" as in Lists

  // Dictionaries or Map  -----------------------

  Map<String, String> values = {
    'k1': 'Val1',
    'k2': 'Val2',
    'k3': 'Val3'
  };

  var films = Map();
  films[1] = 'Film A1';
  films['a2'] = 'Film A2';
  films['a3'] = 'Film A3';

  var films2 = Map<String, String>();
  films2['a1'] = 'Film A1';
  films2['a2'] = 'Film A2';
  films2['a3'] = 'Film A3';

  final constMap1 = const {
    1: 'One',
    2: 'Two',
    3: 'Three'
  };


  final constMap2 = const {
    '1': 'One',
    '2': 'Two',
    '3': 'Three'
  };

  print(values);
  print(films);
  print(films2);
  print(films.length);
  print(constMap1);
  print(constMap2);
  // In the same way works "spread", "spread-nullable", "if" and "for" as in Lists


  // Symbols

  #mysymbol;


//------------------------------------------------------------------------------
// Conditional operators and Loops

  print('hhhhhhhh' is String);
  print('hhhhhhhh' is! String);
  print('hhhhhhhh' is int);


  var b;
  var value = 11;
  var c = b ?? 15;
  print(b ??= value);
  print(c);

  var collbacks = [];

  for( var i=0; i<2; i++){
    collbacks.add(() => print(i));
  }

  collbacks.forEach((val) => val());
  //        OR
  collbacks.forEach((val){val();});

  //The same "while"
  //The same "switch" - not recommended: better to use "if...else if...else"

}
