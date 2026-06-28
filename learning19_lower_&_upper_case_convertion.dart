import 'dart:io';

void main () {


  /// Converting to uppercase
  String name1 = "hi, i'm nazmul";
  //  Using .toUpperCase to convert
  print(name1.toUpperCase());


  /// Converting to lowercase
  print('Enter your name');
  String? name2 = stdin.readLineSync();
  // Using .toLowerCase to convert and null assertion ! is used to tell it's not gonna be null
  // Cause .toLowerCase or upper dosen't take null
  print(name2!.toLowerCase());


  /// Converting the firs letter of words
  String text = "hello world from dart";

  String titleCase = text
      // Splitting the text at spaces using .split
      .split(' ')
      // Capitalizing the word and converting it to a map to use join
      // .substring takes everything from the index 1
      .map((word) => word[0].toUpperCase() + word.substring(1))
      // joining the map at spaces to make the string again
      .join(' ');

  print(titleCase);


}