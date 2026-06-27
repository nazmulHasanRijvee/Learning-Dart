void main () async {

  /// listen to the Stream using .listen method
  allNumbers().listen((data) {
    print(data);
  });

  /// Alternative approach to listening to a stream
  // yield* is the short hand for this
  await for (final n in numbers()) {
    print(n);
  }

}

/// Defining a method that will return a Stream
// using async* instead of async
Stream<int> numbers() async* {
  yield 1;
  yield 2;
  yield 3; // yield instead of return in Stream
}
Stream<int> allNumbers() async* {
  yield 0;
  yield* numbers(); // yield* emit all event from another stream
  yield 4;

}