import 'dart:async';

void main() {
  /// Controller adds data
  final controller = StreamController<String>();

  /// Listeners listen to it
  controller.stream.listen((message) {
    print(message);
  });

  // adding data
  controller.add("Hello");
  controller.add("World");

  // Close after listening to prevent memory leak
  controller.close();
}