void main() {
  /// var final const

  var name = 'dart';

  /// type defined by assigned value

  print('Hello, $name');

  /// $ is used to access the variable value

  // ignore: unused_local_variable
  final stringName = 'dart';

  /// initialized at run time

  // ignore: unused_local_variable
  const pi = 3.1416;

  /// initialized at compile time

  /// is keyword to check type of the variable
  // if matched then returns true if not then false
  var num = 12;
  double decimal = 1.2;
  // ignore: unnecessary_type_check
  print(num is int); // true
  print(decimal is String); // false
}
