import 'dart:async';
import 'dart:io';

void main () async {


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


  /// catch() also internally gives us Stack trace too which can be printed
  // and just like debugPrint() theres debugPrintStack() too for printing stack trace
  try {
    List<String> products = ['Shirt', 'Pant', 'x'];
    print(products[5]);
  } catch (error, stackTrace) {
    // Showing a custom error but its not good practice
    print('Error : This product is out of stock');
    // good practice
    print('Error : $error');
    // printing stack trace
    print('Stack trace : $stackTrace');
  }


  /// We can also throw Exception in catch(e) block and and  catch in another try-catch
  // block we can catch the exception (called outer exception), which is
  // wrapping the previous one
  try {
    try {
      // Simulate an operation that might fail
      int result = int.parse('abc'); // This will throw a FormatException
      print(result);
    } catch (e) {
      // Catch the initial exception and re-throw a more specific one
      // to be handled further up the call stack
      throw Exception('Failed to process input: $e');
    }
  } catch (outerException) {
    // We can inspect outerException to see the wrapped original exception
    print('Caught an outer exception: $outerException');
  }


  /// finally{} block with try-catch block
  // finally{} block will run no matter what. It says after running the risky code
  // run the code in finally. Even if there is error (catch(e) {} runs) or no-error,
  // finally block runs regardless
  try {

    final int value = int.parse('a');
    print(value);

  } catch (e) {

    print('Error: $e');

  } finally {

    print('Code has been run');

  }

  // We can also use finally{} directly with try{} block
  // Also even if code return from try{} block, finally{} block will run
  // regardless this is especially useful to ensure reusability.
  // Like multiple if conditions returns and stops the function but if there
  // is common code that need to run when function is returned or stooped
  void doSomething() {
    final uri = {
      "approved": true,
      "request_token" : 'abc1234'
    };

    try{

      // Instead of writing here print twice, write once in finally block
      if(uri["approved"] != true) return;

      if(uri["request_token"] == null) return;

      print('Authenticated');

      // Runs regardless, even if returns from try{} block
    } finally {

      print('Function Stopped, dispose controllers or cancel Streams');

    }
  }

  doSomething();


  /// We can use .then() and .catchError as alternatives
  await myFunction().then((value) {

    if(value == 'Haha') {
      print('laughing');
    } else {
      throw Exception('Some arbitrary error');
    }
    }).catchError((e) {
      print('Error: $e');
  });


  /// try-catch, all exception list
  try {
    // This will now time out because myFunction delays for 20s and timeout is 15s
    final String response = await myFunction()
        .timeout(const Duration(seconds: 15));
    print(response);

  } on TimeoutException catch(error) {
    // Catches exceptions when an asynchronous operation takes too long
    print('Timed Out, Error: $error');

  } on SocketException catch (error) {
    // Catches exceptions related to network issues (e.g., no internet connection)
    print('No Internet Connection Found, error: $error');

  } on FormatException catch (error) {
    // Catches exceptions when data is not in an expected format (e.g., int.parse('abc'))
    print('Format Error: $error');

  } on RangeError catch (error) {
    // Catches exceptions when an index is out of bounds for a list or string
    print('Range Error: $error');

  } catch (error) {
    // A generic catch block for any other unhandled exceptions
    print('An unexpected error occurred: $error');

    // Optionally re-throw the exception if it needs to be handled further up the call stack
    throw Exception('Unhandled error: $error');

  }



  /// runZonedGuarded(), not every exception (error) can be caught with
  // “try-catch block” in everywhere, Dart zones help us catch all uncaught
  // asynchronous errors (not handled by try-catch) in one centralized place.
  // Using runZonedGuarded(). Takes two parameters:
  // - A Void Callback method to run in its own guarded error zone
  // - A Callback method (onError) that gives us error and stackTrace internally which can be printed or logged
  runZonedGuarded(() {

    final int num = int.parse('a'); // will throw exception
    print(num);

  },(error, stackTrace) {

    // handle any uncaught errors
    print('error $error');
    print('stackTrace ${stackTrace.toString()}');

  });



}

Future<String> myFunction () async {

  print('Starting');

  await Future.delayed(Duration(seconds: 5));

  print('Ending');

  return 'Hahaha';

}