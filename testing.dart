void main () async {
  var list = [1, 2, 1, 3];
  var convertedSet = list.toSet();
  print(convertedSet);
}
Future<void> timer() async {
  await Future.delayed(const Duration(seconds: 3));
  print('Done');
}
