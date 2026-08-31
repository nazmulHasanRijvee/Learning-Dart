class MyClass {
  String name = 'Max';
  int age = 30;
}

void main() {
  // Big O notation.It is used to measure the time and space complexity
  // of an algorithm. Hierarchy of Big O notation
  // O(1) < O(log n) < O(n) < O(n log n) < O(n^2) < O(2^n) < O(n!)

  int x = 2; // O(1)
  int y = 9;
  int z = 15;
  print(x + y + z); // O(1)

  List<int> myList = [1, 2, 3];
  myList.add(4); // O(n)

  for (int value in myList) {
    print(value);
  } // O(n)

  MyClass object = MyClass(); // O(n)

  // hash map
  Map<String, dynamic> myMap = {
    'name': 'Oliver',
    'roll': 123,
    'visited city': ['Dhaka', 'Chattogram', 'Khulna'],
    'Degree': {'Degree': 'CSE', 'CGPA': 3.98},
    'my class': object,
  }; // O(n)

  print(myMap['visited city']);

  myMap['name'] = 'Jack';

  // Best practice is to avoid this use for loop instead of forEach
  myMap.forEach((key, value) {
    print('Key is $key and value is $value');
  }); // O(n)

  for (MapEntry myEntry in myMap.entries) {
    print('Key is ${myEntry.key} and value is ${myEntry.value}');
  } // O(n)
}
