void main() {
  /// Find the first non-repeating character in a string
  final String text = "loveleetcode";
  final Map<String, int> freq = {};
  for (int i = 0; i < text.length; i++) {
    if (freq[text[i]] == null) freq[text[i]] = 0;
    freq[text[i]] = freq[text[i]]! + 1;
  }
  for (int i = 0; i < text.length; i++) {
    if (freq[text[i]] == 1) {
      print(text[i]); // answer is v
      break;
    }
  }
}
