void main() {
  String number = '42';

  String doubleNumber = '42.22';

  int parseNumber = int.parse(number); // Converts to integer from String

  double parseDouble = double.parse(
    doubleNumber,
  ); // Converts to double from String

  print(parseNumber); // Shows as integer

  print(parseDouble); // Shows as double

  print(parseNumber.toString()); // Converts to String from integer

  double price = 99.99;

  print(price.round()); // Rounds up to nearest round number
}
