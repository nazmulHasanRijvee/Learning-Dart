void main () {

  /// Find the sum of all items in the array
  final List<int> numbers = [5, 2, 8, 1, 4];
  int sum = 0;
  for(final i in numbers){
    sum  += i;
  }
  print(sum);

}