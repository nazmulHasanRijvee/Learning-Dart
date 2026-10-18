import 'dart:io'; // imports dart

void main() {
  /// main body of the code that runs

  /// declaring a nullable string variable
  String? name;
  /// declaring a nullable integer variable which is a must for taking input
  int? age;

  print('Enter Your name:');

  /// stdin.readLineSync() always takes as a String type input
  name = stdin.readLineSync();

  print('Enter your age: ');

  age = int.tryParse(stdin.readLineSync()!);

  /// since readLineSync() takes input as string, its needed to
  /// be converted to integer using variable convertion parse or tryParse and ! null assertion operator
  /// tells it that I am sure this value is not null. Trust me, and treat it as non-null. tryParse does not
  /// throw an error even if string is typed in integer input and lets the code run but parse stops it.

  print('Name is: $name');

  print('age is: $age');
}
