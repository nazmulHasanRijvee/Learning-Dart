import 'dart:async';

void main() {
  runZonedGuarded(
    () {
      final int num = int.parse('a');
      print(num);
    },
    (error, stackTrace) {
      // handle any uncaught errors
      print('error $error');
      print('stackTrace ${stackTrace.toString()}');
    },
  );
}
