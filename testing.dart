import 'dart:async';

void main() async {
  final controller = StreamController<int>.broadcast();

  produceEvents(controller);

  await for (final value in controller.stream) {
    print(value);
  }
}

Future<void> produceEvents(StreamController<int> controller) async {
  for (var i in [0, 1, 2]) {
    await Future.delayed(const Duration(milliseconds: 500));
    controller.add(i);
  }
  await controller.close();
}
