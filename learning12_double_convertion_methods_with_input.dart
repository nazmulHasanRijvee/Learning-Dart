import 'dart:io'; // imports dart

main(){ // main body of the code that runs

  print('Enter 1st number: ');

  double ? number1 = double.tryParse(stdin.readLineSync()!); // the variable must be nullable for input,
  // reads the input as string then converts it to double and tryParse doest not throw an error even if
  // string is entered as input, simply runs the code

  print('Enter 2nd number: ');

  double ? number2 = double.tryParse(stdin.readLineSync()!);

  print('sum : ${(number1!  + number2!)}'); // null assertion ! tells dart rest assure values will not be null
  // basically converts nullable to non null, only one line needs to be specified other lines automatically understood

  print('sub : ${(number1 - number2).toStringAsFixed(3)}'); // substraction and shows output for 3 decimal digits using toStringAsFixed

  print('multi : ${(number1 * number2).toStringAsFixed(3)}'); // multiplication

  print('Divi : ${(number1 / number2).toStringAsFixed(3)}'); // division

}