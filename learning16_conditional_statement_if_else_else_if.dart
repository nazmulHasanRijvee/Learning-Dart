import 'dart:io';

void main () {


  /// if-else conditional statement
  int age = 18;

  if (age >= 18) {
    print('Able to vote');
  } else {
    print('Unable to vote');
  }


  bool isMember = true;

  // if runs the code if the condition is true
  if (isMember) {
    print('10% Discount');
  // ignore: dead_code
  } else {
    print('No Discount');
  }


  /// else if multiple condition statement
  String signal = 'Red';

  if (signal == 'Green') {
    print('Go on!');
  } else if (signal == 'Yellow') {
    print('Slow');
  } else {
    print('Stop !!!');
  }


  /// Using or || in conditional statement
  String location = 'Mirpur';

  if (location == 'Dhanmondi' || location == 'Gulshan') {
    print('Delivery possible');
  } else {
    print('Sorry delivery not possible');
  }


  /// Nested if-else conditional statement
  String location2 = 'Gulshan';

  if (location2 == 'Dhanmondi' || location2 == 'Gulshan') {
    if (location2 == 'Dhanmondi') {
      print('Delivery charge is 100 taka');
    } else {
      print('Delivery charge is 80 taka');
    }
  } else {
    print('Sorry delivery not possible');
  }


  /// Marking using if-else
  int marks = 85;

  if (marks >= 80) {
    print('A+');
  } else if (marks >= 70) {
    print('A');
  } else if (marks >= 60) {
    print('B');
  } else if (marks >= 50) {
    print('C');
  } else if (marks >= 33) {
    print('D');
  } else {
    print('F (Fail)');
  }


  /// ternary operator short hand if-else
  String yes = "ok";
  // condition ? if the condition is true : or if the condition false
  String operation = yes == 'ok'? 'No problem' : 'Problem';
  print(operation);


  /// Mini project log in
  print("=======================================");

  print('Enter your username: ');
  String? username = stdin.readLineSync();

  print('Enter your password');
  String? password = stdin.readLineSync();

  if (username == 'Nazmul' && password == '1234') {
    print('Log in successful');
  } else if (username != 'Nazmul' && password == '1234') {
    print('Password is correct. But username is incorrect, try again with correct username');
  } else if (username == 'Nazmul' && password != '1234') {
    print('Username is correct. But password is incorrect, try again with correct password');
  } else {
    print('Both username and password is incorrect, Try again with correct username & password');
  }


}