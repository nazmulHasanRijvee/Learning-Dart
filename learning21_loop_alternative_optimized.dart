void main() {

  /// This methods are more optimized and provides clean code with readability

  /// .forEach() loop
  List<int> list1 = [10, 30, 50, 60];
  List<int> list2 = [];

  list1.forEach((elements) {
    list2.add(elements + 1);
  });

  print(list2); // [11, 31, 51, 61]


  /// List.generate(), syntax: List.generate(length, (length){return ...})
  // Optimized
  List<int> list3 = List.generate(10, (index) => index + 1);

  print(list3); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  /// .map((e) => ) method which is an alternative of loop and used for list
  // of maps. It returns a list of Iterables<T>
  // optimized
  List<Map<String, dynamic>> myList = [
    {
      'id' : 01,
      'name': 'Nazmul'
    },
    {
      'id': 02,
      'name' : 'Alex'
    },
    {
      'id': 03,
      'name' : 'Max'
    }
  ];

  // use .toList() method to convert iterables to list
  var myList2 = myList.map((e)=> e['id']).toList();
  print(myList2);


  /// .fold() method for accumulation a collection or lists values
  // It has takes two arguments, initialValue and a callback method
  List<int> list4 = [1, 3, 4, 5];

  final total = list4.fold<int>(0, (previousValue, element ) => previousValue + element);
  print(total); // 13

}