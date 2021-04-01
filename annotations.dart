import 'dart:mirrors';

class Todo {
  final String name;
  final String description;

  const Todo(this.name, this.description);
}

@Todo('Chibi', 'Rename class')
class MyClass{
  void dummyFunction(){
    print('Dummy method.');
  }

  int? value1;

  @Todo('0 Tuwaise', '0 Change fielld type')
  int? value0;

  @Todo('2 Tuwaise', '2 Change fielld type')
  int? value2;

  @Todo('Anyone', 'Change format')
  void printValue() {
    print('value: $value0');
  }

  @Todo('Anyone', 'Remove this')
  MyClass();
}

void main() {
  MyClass myClass = new MyClass();
  InstanceMirror im = reflect(myClass);
  ClassMirror classMirror = im.type;

  classMirror.metadata.forEach((metadata) {
    if (metadata.reflectee is Todo) {
      print('I name: ${metadata.reflectee.name} / description: ${metadata.reflectee.description}\n');
    }
  });

  for (var v in classMirror.declarations.values) {
    if (!v.metadata.isEmpty) {
      if (v.metadata.first.reflectee is Todo) {
        print('II name: ${v.metadata.first.reflectee.name} / description: ${v.metadata.first.reflectee.description}\n');
      }
    }else{
      print('This element of the class has no annotation.\n');
    }
  }
}