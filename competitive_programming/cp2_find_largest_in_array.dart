void main () {

  /// """Find the largest number in the array"""
  // Without using sorted() method
  final List<int> numbers = [5, 2, 8, 1, 4];
  int largest = numbers[0];
  for(final i in numbers) {
    if(i > largest) largest = i;
  }
  print(largest);

}