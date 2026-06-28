void main () {

  /// Check if array contains duplicates
  // Return True if any value appears at least twice in the give array
  // otherwise false

  final List<int> numbers = [1, 2, 3, 1];
  print(checkDuplicates(numbers));

}

bool checkDuplicates(List<int> numbers) {

  final Set<int> seen = {};

  for(final num in numbers) {

    if(seen.contains(num)){
      return true;
    } else {
      seen.add(num);
    }

  }

  return false;

}