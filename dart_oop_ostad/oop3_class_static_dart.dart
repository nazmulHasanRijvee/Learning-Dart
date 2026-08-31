/// Creating a class named Animal for static member example
class Animal {
  // Properties or variables of the class which can be accessed using dot after object
  String name;

  // Without creating an instance or object of the class, we can access the
  // static member using the class name. Static members are shared among all
  // instances of the class.
  static String className = 'Animal';

  // Constructor
  Animal({required this.name});

  // Declaring a static method or function
  static void test() {
    print('test');
  }
}

void main() {
  /// Creating an instance/object of Animal class
  Animal dog = Animal(name: 'Tom');
  print('Animal Name: ${dog.name}');
  print('Class Name: ${Animal.className}');

  // Directly accessing static member using the class name without creating an
  // instance or object of the class
  Animal.test();
}
