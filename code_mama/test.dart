import 'dart:io';

void main() {
  final input = double.tryParse(stdin.readLineSync()!);
  final convertion = Convertion(celsius: input ?? 0);
  print(convertion.returnFahrenheit());
}

class Convertion {
  final double celsius;
  const Convertion({required this.celsius});
  String returnFahrenheit() {
    double fahrenheit = celsius * 33.8;
    String result = fahrenheit.toStringAsFixed(2);
    return result;
  }
}
