void main () {

  /// String slicing using string indexing
  String word = "Dart";
  print(word[0]); // D
  print(word[word.length - 1]); // t

  /// .substring() method for String slicing
  String text = "Hello World";

  // Slice from index 0 (inclusive) to 5 (exclusive)
  String part1 = text.substring(0, 5);

  // Start slicing from index 6 to the end
  String part2 = text.substring(6);

  print(part1); // Hello
  print(part2); // World

  /// .split() breaks a string into parts (returns a List<String>).
  // Divide a String.
  String sentence = "Dart is fun to learn";

  List<String> words = sentence.split(" ");
  print(words);

  // Use case Split by spaces, commas, or any delimiter
  String data = "apple,banana,grape";
  List<String> fruits = data.split(",");
  print(fruits); // [apple, banana, grape]

  /// .join () combines a List into a String it does the opposite of split().
  // It joins list elements into a single string.
  List<String> words2 = ["Dart", "is", "cool"];
  String sentence2 = words2.join(" ");
  print(sentence2); // Dart is cool

  /// Combine .split() and .join(). We can use both to modify strings easily.
  String sentence3 = "I love coding in Dart";

  // Replace spaces with hyphens
  String modified = sentence3.split(" ").join("-");
  print(modified); // I-love-coding-in-Dart

  /// .toUpperCase() and .toLowerCase() converts all letters to uppercase or lowercase using
  String mixedCase = "Dart Programming";
  print(mixedCase.toUpperCase()); // DART PROGRAMMING
  print(mixedCase.toLowerCase()); // dart programming

  /// .trim() method trims whitespace
  String spaced = "   Hello Dart!   ";
  print(spaced.trim()); // "Hello Dart!"

  // .trimLeft() method removes the whitespaces of the left side
  spaced.trimLeft();
  print(spaced); // "Hello Dart!   "

  // .trimRight() method removes the whitespaces of the right side
  spaced.trimRight();
  print(spaced); // "   Hello Dart!"


  /// .contains() checks if a string contains a substring
  String phrase = "Learning Dart is fun";
  print(phrase.contains("Dart")); // true

  /// .replaceAll() replaces parts of a string
  String original = "I like cats";
  String replaced = original.replaceAll("cats", "dogs");
  print(replaced); // I like dogs

  /// startsWith() and endsWith() checks start/end of a String
  String filename = "document.pdf";
  print(filename.startsWith("doc")); // true
  print(filename.endsWith(".pdf")); // true

  /// .length property returns the length of a string
  String sample = "Dart";
  print(sample.length); // 4

  /// .indexOf() method checks the position of a substring
  // in the first occurrence
  String phrase2 = "Find the position of the word 'the'";
  print(phrase2.indexOf("the")); // 5 (first occurrence)

  /// .padLeft() and .padRight() methods are used to ensure a number is a
  // specific 2 digit even if it is missing a digit like it’s a single digit
  // number 5 then specified character/String like '0' will be added
  // automatically to the left to make it 2 digit.
  // This is useful for standard media formatting (music players, video players).
  // Example:
  // without it 5
  // with it 05
  // It only works with String data type
  int num = 5;
  String convertedNum = num.toString();
  print(convertedNum.padLeft(2, '0'));
  print(convertedNum.padRight(2, '0'));


  /// .fromEnvironment() method reads a value from the environment using its key
  // and returns the value as String. Useful for --dart-define, compile time value injection
  // NOTE, assigned variable has to be const (compile-time) otherwise if final (run-time)
  // it will return an empty String cause there's no environment variable in runtime
  const String baseUrl = String.fromEnvironment('API_URL');
  print(baseUrl);

  // we can also specify a fall back value in defaultValue property
  // if environment variable is not found
  const String baseUrl2 = String.fromEnvironment('API_URL', defaultValue: 'Not Found!' );
  print(baseUrl2);


  /// .fromCharCode() & .fromCharCodes() method
  // .fromCharCode() method takes a ASCII code of a character and returns the character
  // for that code. While .fromCharCodes() method takes a List of ASCII char codes
  // and returns a String by joining all of the characters, according to their codes
  final value1 = String.fromCharCode(65);
  print(value1); // A

  final value2 = String.fromCharCodes([65, 66, 67]);
  print(value2); // ABC

}