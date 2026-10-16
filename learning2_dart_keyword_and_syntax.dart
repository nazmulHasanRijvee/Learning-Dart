void main() {
  /// var final const

  /// type defined by assigned value
  var name = 'dart';

  /// $ is used to access the variable value
  print('Hello, $name');

  /// initialized or assigned at run time
  // changes only during run time
  // ignore: unused_local_variable
  final stringName = 'dart';

  /// initialized or assigned at compile time
  // can't be changed a constant
  // ignore: unused_local_variable
  const pi = 3.1416;

  /// is keyword to check type of the variable
  // if matched then returns true if not then false
  var num = 12;
  double decimal = 1.2;
  // ignore: unnecessary_type_check
  print(num is int); // true
  print(decimal is String); // false
}
