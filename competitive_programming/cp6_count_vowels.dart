void main() {
  /// Count the number of vowels in a string
  final String text = "programming";
  String myStr = 'aioeu';
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (myStr.contains(text[i])) count++;
  }
  print(count);
}
