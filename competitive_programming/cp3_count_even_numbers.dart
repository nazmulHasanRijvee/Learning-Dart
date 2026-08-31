void main() {
  /// Find how many even numbers are in the given list
  final List<int> numbers = [5, 2, 8, 1, 4, 7, 10];
  int count = 0;
  numbers.map((e) {
    if (e % 2 == 0) count++;
  }).toList(); // .toList() forces Iterables to calculate
  print(count);
}
