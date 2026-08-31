void main() {
  /// Find if the String is palindrome
  final String text = 'racecar';
  String result = '';
  for (int i = text.length - 1; i >= 0; i--) {
    result += text[i]; // String concatenation
  }
  if (result == text) print(true);
  if (result != text) print(false);
}
