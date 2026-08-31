void main() {
  /// Reverse the given string
  final String text = 'python';
  String result = '';
  for (int i = text.length - 1; i >= 0; i--) {
    result += text[i]; // String concatenation
  }
  print(result);
}
