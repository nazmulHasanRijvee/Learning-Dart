void main () {
  /// Two sum problem, find two numbers in an array whose sum equals the target
  final List<int> numbers = [2, 7, 11, 15];
  final int target = 9;
  final Map<int, int> seen = {};

  for (int i = 0; i <numbers.length; i++) {

    final int needed = target - numbers[i];

    if(seen.containsKey(needed)){  // checking if the needed values is found in the dictionary or not
      final output = [seen[needed], i];
      print(output);
      break; // break or return if answer is found
    } else {
      seen[numbers[i]] = i; // if not found then store current value and its index for future look up
    }

  }
}