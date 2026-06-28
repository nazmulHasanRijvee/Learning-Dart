import 'dart:async'; // Required for Future, Future.delayed, TimeoutException

void main() async {


  print('--- Dart Synchronous Example ---');
  // In Dart, by default everything is synchronous. Synchronous blocks other operations
  // from executing until its complete. So, operation3 can’t be printed before
  // executing example() function.
  void synchronousExample() {
    print('Operation2 (Synchronous)');
  }

  print('Operation1 (Synchronous)');
  synchronousExample();
  print('Operation3 (Synchronous)');


  print('\n--- Dart Asynchronous Future Example ---');
  // Future is like a promise that it will return something. It has two states:
  // completed and uncompleted. Asynchronous allows other operations to execute
  // before it completes. By delayed() function or method we can delay the printing time.
  // So operation1 prints first then operation3 then after 3 seconds operation2 prints.
  Future<void> asynchronousFutureExample() async {
    await Future.delayed(Duration(seconds: 3));
    print('Operation2 (Asynchronous Future)');
  }

  print('Operation1 (Asynchronous Future)');
  asynchronousFutureExample();
  print('Operation3 (Asynchronous Future)');

  // Give some time for the async operation to complete before the next section starts
  await Future.delayed(Duration(seconds: 4));


  print('\n--- Dart Asynchronous Await Example ---');
  // `await` can only be used in an asynchronous function. It tells the compiler to wait
  // until that asynchronous operation is complete. Basically, it turns an async call to sync.
  // Here operation1 prints first then waits 3 seconds, prints operation2 and 12,
  // then prints operation3.
  Future<int> asynchronousAwaitExample() async {
    await Future.delayed(Duration(seconds: 3));
    print('Operation2 (Asynchronous Await)');
    return 12;
  }

  print('Operation1 (Asynchronous Await)');
  int res = await asynchronousAwaitExample();
  print('Result from Await: $res');
  print('Operation3 (Asynchronous Await)');


  print('\n--- Future.wait Example ---');
  // Future.wait() runs multiple futures in parallel and waits for all of them to complete.
  // It completes only when every Future in the list finishes or fails if any one throws an error.
  // Here’s what happens:
  // • All three futures start running at the same time.
  // • Dart waits until all are done before continuing.
  // • The await returns a list of results if the futures return values.

  // Dummy functions for Future.wait
  Future<void> fetchWeather() async {
    await Future.delayed(Duration(seconds: 2));
    print("Weather fetched (2s)");
  }

  Future<void> getUserProfile() async {
    await Future.delayed(Duration(seconds: 1));
    print("User profile fetched (1s)");
  }

  Future<void> loadSettings() async {
    await Future.delayed(Duration(seconds: 3));
    print("Settings loaded (3s)");
  }

  print('Starting Future.wait (void)');
  await Future.wait<void>([
    fetchWeather(),
    getUserProfile(),
    loadSettings(),
  ]);
  print(" All Future.wait (void) operations done!");
  // Note: If we use Future.wait() in initState() we do not need to use await or convert the function to async.


  print('\n--- Future.wait with Return Values Example ---');
  // By default, Future.wait() expects to return a value or list of values.
  // Here, both async's run parallelly and total wait time is 2 seconds not 3 seconds.
  // We can also get the values of a Future function directly without using a global
  // variable outside the function and set it in setState.
  Future<String> fetchWeatherWithReturn() async {
    await Future.delayed(Duration(seconds: 2));
    return "☀️ Sunny";
  }

  Future<String> fetchTemperature() async {
    await Future.delayed(Duration(seconds: 1));
    return "27°C";
  }

  print('Starting Future.wait (with return values)');
  final results = await Future.wait([
    fetchWeatherWithReturn(),
    fetchTemperature(),
  ]);
  print("Future.wait results: $results"); // ["☀️ Sunny", "27°C"]


  print('\n--- Future.wait with No Return Values (Explicit void) Example ---');
  // In order to tell Dart that Future.wait() does not return a value, just calls
  // the functions parallelly, we have to add <void> like this Future.wait<void>().
  // This pattern is perfect for initState() in Flutter apps. We can’t directly
  // return from the Future function; we have to use a global variable in this way.

  // Dummy functions for Future.wait<void>
  Future<void> initializeDatabase() async {
    await Future.delayed(Duration(seconds: 1));
    print("Database initialized");
  }

  Future<void> preloadImages() async {
    await Future.delayed(Duration(seconds: 2));
    print("Images preloaded");
  }

  Future<void> checkUserLogin() async {
    await Future.delayed(Duration(seconds: 1));
    print("User login checked");
  }

  Future<void> loadAppData() async {
    print('Starting loadAppData...');
    await Future.wait<void>([
      initializeDatabase(),
      preloadImages(),
      checkUserLogin(),
    ]);
    print("✅ All setup done in loadAppData!");
  }
  await loadAppData();

  print('\n--- Future.any Example ---');
  // Future.any() runs multiple futures in parallel, but returns as soon as one of them
  // completes (successfully or with an error). Think of it like whichever finishes first,
  // give me that result. It’s useful when:
  // • We have backup APIs or redundant sources, and you want to use whichever responds first.
  // • Or we want to timeout a slow operation combined with Future.delayed().
  // We can also return values or just call the function just like Future.wait().

  // Dummy functions for Future.any
  Future<String> serverA() async {
    await Future.delayed(Duration(seconds: 3));
    return "A finished";
  }

  Future<String> serverB() async {
    await Future.delayed(Duration(seconds: 1));
    return "B finished";
  }

  Future<String> serverC() async {
    await Future.delayed(Duration(seconds: 2));
    return "C finished";
  }

  print('Starting Future.any (with return values)');
  final anyResult = await Future.any([serverA(), serverB(), serverC()]);
  print("Future.any result: $anyResult"); // Shows B finished as it is the fastest one.

  // Note: If we use Future.any() in initState() we do not need to use await or convert the function to async.
}
