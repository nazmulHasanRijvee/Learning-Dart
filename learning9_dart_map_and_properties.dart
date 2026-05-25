void main () {

  /// Declaring the map

  Map<String, dynamic> student = { // Keys are strings and values are dynamic

    'name': 'Nazmul',

    'age': 22,

    'grade': 'A+',

    'isPassed': true

  };

  print('Student details $student');

  /// Accessing values in map

  print('Student name ${student['name']}');

  /// Updating values in map

  student['grade'] = 'A';

  print('Student grade ${student['grade']}');

  /// Adding new keys and values

  student['city'] = 'Dhaka';

  print('Student location ${student['city']}');

  student.remove('age'); // .remove() deletes key and its value

  print('Student details $student');

  /// checking keys in map

  if (student.containsKey('grade')) { // .containsKey() checks if a key is present

    print('yes');

  } else {

    print('no');

  }

  /// getting keys of the map as tuple

  print('Keys ${student.keys}'); // .keys returns keys as tuple

  /// getting values of the map as tuple

  print('Values ${student.values}'); // .values returns values as tuple

  /// .putIfAbsent() Map method
  // If key doesn't exists adds the key and value, also returns it
  // If key exists does not overwrite and returns existing value
  Map<String, int> counter = {};
  int val = counter.putIfAbsent('x', () => 42);
  print(val);     // 42
  print(counter); // {x: 42}
  int val2 = counter.putIfAbsent('x', () => 99);
  print(val2); // 42


  // Most common use case grouping
  List<String> words = ['apple', 'ant', 'bat', 'banana', 'avocado'];

  Map<String, List<String>> grouped = {};

  for (var word in words) {
    grouped.putIfAbsent(word[0], () => []).add(word);
    //                              ↑ creates empty list if key missing
    //                                        ↑ then adds word to that list
  }

  print(grouped);
// {a: [apple, ant, avocado], b: [bat, banana]}

}