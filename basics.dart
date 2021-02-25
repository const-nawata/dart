//Функция верхнего уровня.
void main() {   // entry point. Every Dart program starts by main procedure.
  var number = 0;
  int intValue = 42;
  double doubleValue = 12.99;
  num value = getValueFromServer();

  print(number.runtimeType);
  print(intValue.runtimeType);
  print(doubleValue.runtimeType);
  print(value.runtimeType);

  String str = "Dart is simple.";
  int numb = 42;
  print("${str.toUpperCase()} - $numb");

  print(1 == int.parse('1'));
  print(12.22 == double.parse('12.22'));
  print(1.toString() == '1');
  print(3.14159.toStringAsFixed(2) == '3.14');  //  Округление до 2-го знака
}

double getValueFromServer(){
  return 12.88;
}