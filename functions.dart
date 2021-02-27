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

}
