void main () {

  /// .any() method for returning a bool, Checks every element in the list
  // by iterating over it (left to right) and returns a bool
  // (true/false) if the condition is fulfilled in the lambda
  // function. It eternally gives us each element to check
  final List<int> list1 = [1, 2, 3, 4];

  // Here return true if any element in the list1 is greater than or equal to 5
  final bool isPresent = list1.any((e) => e >= 5);
  print(isPresent); // false



  /// .where() method for Selective Picking and returns a List of Iterable<T>
  // elements from the List which satisfies the condition in the lambda.
  // So if it returns true then it gets picked
  // It iterates over the list and gives each element internally
  // use .toList() to convert it back to a List from Iterable<T>
  final Iterable<int> oddNumbers = list1.where((e) => e % 2 != 0);

  print(oddNumbers.toList()); // [1, 3]


}