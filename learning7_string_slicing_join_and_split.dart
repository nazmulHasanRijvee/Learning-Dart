void main () {

  /// String slicing using string indexing
  String word = "Dart";
  print(word[0]); // D
  print(word[word.length - 1]); // t

  /// String slicing using substring method
  String text = "Hello World";

  // Slice from index 0 (inclusive) to 5 (exclusive)
  String part1 = text.substring(0, 5);

  // Start slicing from index 6 to the end
  String part2 = text.substring(6);

  print(part1); // Hello
  print(part2); // World

  /// Divide a String. split() breaks a string into parts (returns a List<String>).
  String sentence = "Dart is fun to learn";

  List<String> words = sentence.split(" ");
  print(words);

  // Use case Split by spaces, commas, or any delimiter
  String data = "apple,banana,grape";
  List<String> fruits = data.split(",");
  print(fruits); // [apple, banana, grape]

  /// Combine a List into a String join() does the opposite of split(). It joins list elements into a single string.
  List<String> words2 = ["Dart", "is", "cool"];
  String sentence2 = words2.join(" ");
  print(sentence2); // Dart is cool

  /// Combine split() and join(). We can use both to modify strings easily.
  String sentence3 = "I love coding in Dart";

  // Replace spaces with hyphens
  String modified = sentence3.split(" ").join("-");
  print(modified); // I-love-coding-in-Dart

  /// Converting all letters to uppercase or lowercase using toUpperCase() and toLowerCase()
  String mixedCase = "Dart Programming";
  print(mixedCase.toUpperCase()); // DART PROGRAMMING
  print(mixedCase.toLowerCase()); // dart programming

  /// Trimming whitespace using trim()
  String spaced = "   Hello Dart!   ";
  print(spaced.trim()); // "Hello Dart!"

  // .trimLeft() method removes the whitespaces of the left side
  spaced.trimLeft();
  print(spaced); // "Hello Dart!   "

  // .trimRight() method removes the whitespaces of the right side
  spaced.trimRight();
  print(spaced); // "   Hello Dart!"


  /// Checking if a string contains a substring using contains()
  String phrase = "Learning Dart is fun";
  print(phrase.contains("Dart")); // true

  /// Replacing parts of a string using replaceAll()
  String original = "I like cats";
  String replaced = original.replaceAll("cats", "dogs");
  print(replaced); // I like dogs

  /// Checks  start/end of a string using startsWith() and endsWith()
  String filename = "document.pdf";
  print(filename.startsWith("doc")); // true
  print(filename.endsWith(".pdf")); // true

  /// Returns the length of a string using length property
  String sample = "Dart";
  print(sample.length); // 4

  /// Checking the position of a substring using indexOf()
  String phrase2 = "Find the position of the word 'the'";
  print(phrase2.indexOf("the")); // 5 (first occurrence)


}