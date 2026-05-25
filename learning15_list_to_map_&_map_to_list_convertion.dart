void main () {


  /// Using .entries to convert map to list
  Map<String, dynamic> person = {

    'id': 01,

    'job': 'Developer',

    'salary': 20.50
  };

  /// Separates each key-value pair with MapEntry
  List<MapEntry<String, dynamic>> entryList = person.entries.toList();

  print('Converting map to list with MapEntry : \n$entryList');


  /// Using .entries.map((e) => [e.key, e.value]) to convert map to a nested list
  /// Separates each key-value pair with a list
  List<List<dynamic>> kvList = person.entries.map((e) => [e.key, e.value]).toList();

  print('\nConverting map to a nested list : \n$kvList');


  /// Using .entries.map((e) => {e.key: e.value}) to convert map to a list of maps
  /// Separates each key-value pair with a map in the list
  List<Map<String, dynamic>> mappedList = person.entries.map((e) => {e.key: e.value}).toList();

  print('\nConverting map to a list of maps in the list : \n$mappedList');


  /// Using .keys and .values to convert map's keys and values to a list
  /// Converts the keys of the map to a list
  print('\nConverting map keys to a list : \n${person.keys.toList()}');

  /// Converts the values of the map to a list
  print('\nConverting map values to a list : \n${person.values.toList()}');


  // List to map convertion


  /// Using .fromEntries() to convert list to map
  var entryList1 = [

    MapEntry('id', 1),

    MapEntry('job', 'Developer'),

    MapEntry('salary', 20.5)

  ];

  /// Converts to map by taking each key-value pair from MapEntry
  var person1 = Map.fromEntries(entryList1);

  print('\nConverting list to map through MapEntry : \n$person1');


  /// Using .fromEntries(map_name.map((pair) => MapEntry(pair[0], pair[1]))) to
  /// convert nested list to map
  var kvList1 = [

    ['id', 1],

    ['job', 'Developer'],

    ['salary', 20.5]

  ];

  /// Converts to map by taking each key-value pair from the nested list
  var person2 = Map.fromEntries(
      kvList1.map((pair) => MapEntry(pair[0], pair[1]))
  );

  print('\nConverting from nested list to map : \n$person2');


  /// Using loop to convert list of maps to a map
  var mappedList1 = [

    {'id': 1},

    {'job': 'Developer'},

    {'salary': 20.5}

  ];

  /// Converting to map by taking each maps in the list of maps and ...m unpacking them
  var person3 = {

    for (var m in mappedList1) ...m

  };

  print('\nConverting from list of maps to map : \n$person3');


  /// Converting list of keys and values to map using .fromIterables( , )
  var keys = ['id', 'job', 'salary'];

  var values = [1, 'Developer', 20.5];

  /// takes the keys and values from the list and converts to map
  var person4 = Map.fromIterables(keys, values);

  print('\nConverting key and value list to map : \n$person4');


}