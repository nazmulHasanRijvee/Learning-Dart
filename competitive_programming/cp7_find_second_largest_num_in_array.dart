void main() {
  /// Find the second largest number in the array
  // Without using sorted() or .reverse() method
  final List<int> numbers = [5, 2, 8, 1, 4];
  int largest = numbers[0];
  int secondLargest = numbers[0];
  for (final i in numbers) {
    if (i > largest) {
      secondLargest = largest;
      largest = i;
    } else if (i > secondLargest) {
      // if largest < i < secondLargest
      secondLargest = i;
    }
  }
  print(largest);
  print(secondLargest);
}
