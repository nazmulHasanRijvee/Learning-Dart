void main () {

  /// Check if array contains duplicates
  // Return True if any value appears at least twice in the give array
  // otherwise false

  final List<int> numbers = [1, 2, 3, 1];
  print(checkDuplicates(numbers));
  print(alternative(numbers)); // alternative approach by converting to set

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

bool alternative(List<int> numbers) {

  final set = numbers.toSet();
  if (set.length != numbers.length){
    return true;
  } else {
    return false;
  }

}