void main() {
  String number = '42';

  String doubleNumber = '42.22';

  /// int.parse() converts to integer from String
  int parseNumber = int.parse(number);

  double parseDouble = double.parse(
    doubleNumber,
  ); // Converts to double from String

  print(parseNumber); // Shows as integer

  print(parseDouble); // Shows as double

  /// .toString() method Converts to String from integer
  print(parseNumber.toString()); // Converts to String from integer

  double price = 99.99;

  /// .round() method Rounds up to nearest round number
  print(price.round());
}
