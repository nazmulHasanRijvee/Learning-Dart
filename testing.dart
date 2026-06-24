void main () {

  int num = 5;
  String convertedNum = num.toString();
  print(convertedNum.padLeft(2, '0'));
  print(convertedNum.padRight(2, '0'));

}