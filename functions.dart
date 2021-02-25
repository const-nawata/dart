// Function 21:32

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

}
