void main () {


  /// Declaring a set
  Set<String> names = {"Taufiq", "Nazmul", "Hasan", "Rony"};

  print(names);


  /// Adding an element in set
  names.add('Bob');

  print(names);


  /// Adding multiple elements or a set in the existing set
  names.addAll({"Rahat", "Rabbi"});

  print(names);


  /// Removing an element in the set
  names.remove("Rahat");

  print(names);


  /// Removing multiple elements from the set
  names.removeAll({"Bob", "Hasan"});

  print(names);


  /// Finding an element in the set, if it exists returns true else false
  print(names.contains('Rafi'));


  /// Finding multiple elements in the set, if all of them exists returns true else false
  print(names.containsAll({"Nazmul", "Taufiq"}));


  /// Accesses the element at index 2
  print(names.elementAt(2));


  /// Accesses the first element of the set
  print(names.first);


  /// Accesses the last element of the set
  print(names.last);


  /// Prints the length of the set
  print(names.length);


  /// Returns true if the set is empty else false
  print(names.isEmpty);


  /// Returns true if the set is not empty else false
  print(names.isNotEmpty);


  /// sets does not allow duplicate value and ignores it
  names.add("Nazmul");

  print(names);


  /// converting Set to List
  var nameList = names.toList();

  nameList.add("Nazmul"); /// Added a duplicate item cause it allows it

  print(nameList);


  /// Set intersection and union like math
  Set<String> color = {'Red', 'Green','Yellow', 'Blue', 'Grey'};

  Set<String> color2 = {'Red', 'Brown', 'Black', 'Grey'};

  print('Intersection Value : ${color.intersection(color2)}');

  print('Union Value : ${color.union(color2)}');

}