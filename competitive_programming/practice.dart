void main() {
  print(isValid("()[]"));
}

bool isValid(String text) {
  List<String> stack = [];
  Map<String, String> pairs = {")": "(", "}": "{", "]": "["};

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (pairs.containsValue(char)) {
      stack.add(char);
    } else {
      if (stack.isEmpty) return false;

      String result = stack.removeLast();

      if (result != pairs[char]) return false;
    }
  }

  return stack.isEmpty;
}
