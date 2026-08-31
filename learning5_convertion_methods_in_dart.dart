void main() {
  /// 1. String to Numbers (int, double)
  // .parse() throws FormatException on failure.
  // .tryParse() is safer as it returns null instead of crashing.
  String strNum1 = '12';
  int intNum1 = int.parse(strNum1);
  double doubleNum1 = double.parse('12.5');
  int? tryInt = int.tryParse('abc'); // Returns null if invalid
  print('String to Num: $intNum1, $doubleNum1, tryParse: $tryInt');

  /// 2. Double to Int (.toInt())
  // Truncates the decimal part (it doesn't round, just cuts off the decimals).
  double doubleNum2 = 45.98;
  int intNum2 = doubleNum2.toInt(); // Result: 45
  print('Double to Int: $intNum2');

  /// 3. Int to Double (.toDouble())
  // Converts an integer to its floating-point representation.
  int intNum3 = 18;
  double doubleNum3 = intNum3.toDouble(); // Result: 18.0
  print('Int to Double: $doubleNum3');

  /// 4. Any type to String (.toString())
  // The universal method to get the string representation of any object.
  int intNum4 = 56;
  List list1 = [1, 2, 3];
  String strNum3 = intNum4.toString();
  String strList1 = list1.toString();
  print('To String: $strNum3, $strList1');

  /// 5. Double to String with Precision (.toStringAsFixed())
  // Converts double to string with fixed decimal places (handles rounding).
  double doubleNum5 = 13.456;
  String strNum5 = doubleNum5.toStringAsFixed(2);
  print('Fixed Decimals: $strNum5'); // Result: "13.46"eg

  /// 6. String to Bool (bool.parse)
  // Converts "true" or "false" strings to boolean. Case-sensitive.
  bool isTrue = bool.parse('true');
  print('String to Bool: $isTrue');
  // There's .tryParse() to for safe parsing
  bool? isFalse = bool.tryParse('false');
  print('String to bool: $isFalse');

  /// 7. Collection Conversions (toList, toSet, List.from)
  // .toList() converts iterables (Sets, Map keys) to a List.
  // List.from() creates a new list from an iterable.
  Set set1 = {1, 2, 3};
  List list2 = set1.toList(); // Convert Set to List using toList()
  List list3 = List.from(set1); // Convert Set to List using List.from()
  print('Set to List: toList: $list2, List.from: $list3');

  // .toSet() converts a List to a Set (auto-removes duplicates).
  List list = [1, 2, 1, 3];
  Set set = list.toSet();
  print('List to set: $set'); // [1, 2, 3]

  // Converting Iterables (like from .map()) to List
  Set set2 = {23, 45, 61};
  List list4 = set2
      .map((e) => e + 1)
      .toList(); // Iterable to List using toList()
  List list5 = List.from(
    set2.map((e) => e + 1),
  ); // Iterable to List using List.from()
  print('Iterable to List: toList: $list4, List.from: $list5');

  List list6 = [1, 2, 2, 3];
  Set set3 = list6.toSet(); // Result: {1, 2, 3}
  print('List to Set: $set3');

  /// 8. String splitting & joining
  // .split() turns String -> List. .join() turns List -> String.
  String text = "Dart,Flutter,Firebase";
  List<String> tech = text.split(','); // ['Dart', 'Flutter', 'Firebase']
  String joined = tech.join(' & '); // "Dart & Flutter & Firebase"
  print('Split/Join: $joined');

  /// 9. Type Casting using 'as'
  // Used to treat an object of a general type (dynamic, Object, num)
  // as a specific type. Note: Throws an error if the type is wrong.
  dynamic unknownValue = "I am a string";
  String message = unknownValue as String;

  Object someNum = 100;
  int price = someNum as int;

  num genericValue = 5.5;
  double preciseValue = genericValue as double;

  print('Casting "as": $message, $price, $preciseValue');
}
