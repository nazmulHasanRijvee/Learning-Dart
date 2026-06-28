import 'dart:io';


void main () {


  /// Switch-case
  print('Enter the day : ');
  // .toLowerCase is used to convert string to lower case & null assertion ! is
  // used to tell the method it won't be null cause .toLowerCase does not take null
  // same .toUpperCase exists too
  String? day = stdin.readLineSync()!.toLowerCase();

  switch (day){
    // we don't need break in switch
    case 'friday':
      print('Relax');
    case 'saturday':
      print('Versity');
    case 'sunday':
      print('Gym');
    case 'monday':
      print('Movie');
    // runs this if no case is matched
    default:
      print('Stay in home');
  }


  /// Mini project for season
  print('============================');
  print('Enter the number of the month : ');
  // tryParse to convert string to int safely and null assertion to tell it
  // won't be null
  int? month = int.tryParse(stdin.readLineSync()!);

  switch (month) {
    // or ||| means if one of them matches run the code
    case 5 || 6 || 7:
      print('Summer');
    case 8 || 9 || 10:
      print('Monsoon');
    case 11 || 12 || 1:
      print('Winter');
    case 2 || 3 || 4:
      print('Spring');
    default:
    print('Invalid input');
  }

  /// Replacing Switch With Map
  // If we don't need extra logic or operations before returning in case: we
  // can use a const Map with null safety ?? fallback instead. It increases code
  // stability and readability
  String type = 'tea';

  getCaffeine(type) {
    switch (type) {
      case 'coffee':
        return 'Here is your coffee!';
      case 'tea':
        return 'Here is your tea!';
      case 'energy drink':
        return 'Here is your energy drink!';
      default:
        return 'Unknown beverage type.';
    }

  }

  print(getCaffeine(type));

  getCaffeine2(type) {
    const caffeine = {
      'coffee': 'Here is your coffee',
      'tea': 'Here is your tea',
      'soda': 'Here is your soda',
      'energy drink': 'Here is your energy drink',
    };
    return caffeine[type.toLowerCase()] ?? 'Caffeine content not found';
  }

  print(getCaffeine2(type));

}