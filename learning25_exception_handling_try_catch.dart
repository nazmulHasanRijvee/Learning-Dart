void main () {


  /// Try-catch error handling
  String input = 'dfg';

  print('After end 1');
  print('After end 2');

  try {
    int value2 = int.parse(input);
    print(value2); // doesn't s
  }
  // catch parameter variable can be anything it will hold the error
  catch(error) {
    print(error); // shows dfg
  }

  print('After end 3');
  print('After end 4');


  try {
    List<String> products = ['Shirt', 'Pant', 'x'];
    print(products[5]);
  } catch (error) {
    // Showing a custom error but its not good practice
    print('Error : This product is out of stock');
    // good practice
    print('Error : $error');
  }

  /// We can use .then() and .catchError as alternatives
  myFunction().then((value) {

    if(value == 'Haha') {
      print('laughing');
    } else {
      throw Exception('Some arbitrary error');
    }
    }).catchError((e) {
      print('Error: $e');
  });


}

Future<String> myFunction () async {

  print('Starting');

  await Future.delayed(Duration(seconds: 5));

  print('Ending');

  return 'Hahaha';

}