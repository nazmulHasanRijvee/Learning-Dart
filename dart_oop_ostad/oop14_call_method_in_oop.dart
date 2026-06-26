class Adder {
  /// By defining call() method we make object callable
  int call(int a, int b) {
    return a + b;
  }
}
void main () {
  final add = Adder();
  final result = add(2, 3); // Object becomes callable instead of add.call()
  print(result); // 5
}