void main () {

  /// Normal declaration and initialization
  String name = "Nazmul";
  print(name);


  /// late declaration but no initialization
  // late keyword means value will assigned later in the code
  // but value needs to assigned later or other it will throw error
  late String vegetable;
  vegetable = 'Potato'; // initialized
  print(vegetable);



  /// Another example
  late int result;
  print('Exam start');
  result = 81;
  print('Result - $result');

  // null               late
  //  ?                 late
  //  no issue          issue
  // null               error

}