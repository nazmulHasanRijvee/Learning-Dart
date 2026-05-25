void main () {


  /// key value pair, each value is connected with key and both key and value
  /// can be any type
  Map<String, String> person = { /// first data type is key and second one is value

    'name' : 'Nazmul',

    'age' : '22',

    'address' : 'Dhaka',

    'Ex' : '1 years'

  };

  print(person);


  /// Accessing  a value of a key
  print('My name is : ${person['name']}');

  print('My age is : ${person['age']}');


  /// Updating a value of a key
  print('Address is : ${person['address']}');

  person['address'] = 'Noakhali';

  print('Updated address is : ${person['address']}');


  /// Removing a key and value
  person.remove('age');

  print(person);


  /// Searching for a key and a value
  print(person.containsKey('age'));

  print(person.containsValue('Nazmul'));


  /// Adding a new key and value
  person.addAll({

    'Sub' : 'CSE',

    'CGPA' : '3.9'

  });

  print(person);


  /// Taking the keys and values as list
  var keyList = person.keys.toList();

  print(keyList);

  var valueList = person.values.toList();

  print(valueList);


  /// Declaring dynamic map
  var person2 = {

  };

  print(person2.runtimeType);


  /// Or declaring this manually
  Map<dynamic, dynamic> person3 = {

    'id' : 01,

    'job' : 'Developer',

    'salary' : 20.50

  };

  print(person3.runtimeType);


  /// .map((e) => ) method which is an alternative of loop and used for list
  // of maps. It returns a list of Iterables<T>
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


}