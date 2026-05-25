void main() {

  /// .fillRange() method
  final fillList = List.filled(5, 'old'); // [old, old, old, old, old]
  fillList.fillRange(1, 3, 'new'); // [old, new, new, old, old]
  print(fillList);

}