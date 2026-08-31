void main() {
  /// .toStringAsFixed() method
  // converts a numeric value (int or double) to a String with a fixed number of
  // decimal places.  It rounds the number to the specified number of digits
  // after the decimal point, padding with zeros if necessary, and returns the
  // result as a String
  /// Syntax: number.toStringAsFixed(int fractionDigits)
  /// Parameter: fractionDigits must be an integer between 0 and 20
  /// Behavior:
  // If the number is an int, it is first converted to a double.
  // If the absolute value is ≥ 10²¹, it returns an exponential representation.
  // If fractionDigits is 0, the decimal point is omitted or removed (integer).
  double num = 3.14159;

  String result = num.toStringAsFixed(2);
  print(result); // Output: 3.14

  double num2 = 2.453;

  String result2 = num2.toStringAsFixed(0);
  print(result2); // Output: 2
}
