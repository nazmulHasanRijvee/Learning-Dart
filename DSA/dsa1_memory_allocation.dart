void main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [];

  print('Before adding\n$list2');
  list2 = list1;
  print('After adding\n$list2');

  list1.add(10);

  /// Even after adding 10 in myList its showing in list2 too
  // Because list2 is not copying the value but pointing to the
  // same memory location of the myList
  print('After adding 10\n$list2');

  /// To prevent this we can do cascading so it will copy the values of myList
  /// instead of pointing to the location
  // Its the short hand of loop
  // for(int value in myList){
  // list2.add(value);
  // }
  list2 = [...list1];

  print('After cascading\n$list2');
  list1.add(11);

  /// Even after adding 11 in list1 its not adding in list2
  print('After adding 11\n$list2');
}
