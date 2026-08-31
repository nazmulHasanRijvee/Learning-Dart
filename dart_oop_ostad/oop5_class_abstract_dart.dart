/// Abstract class that serves as a blueprint for other classes.
/// Cannot be instantiated directly - must be extended by subclasses.
/// Subclasses must implement any abstract methods defined here.
abstract class Animal {
  // Properties or variables of the class
  String name;

  // Without creating an instance or object of the class, we can access the
  // static member using the class name. Static members are shared among all
  // instances of the class.
  static String className = 'Animal';

  // Constructor
  Animal({required this.name});

  // Methods/ functions
  void eat() {
    print('$name is eating');
  }

  // Abstract method - must be implemented by subclasses
  void makeSound();

  // Declaring a static method or function
  static void test() {
    print('test');
  }
}

/// Dog class inherits from Animal class
class Dog extends Animal {
  // Here, Dog class inherits properties and methods from Animal class
  // We can also have our own properties and methods in the child class
  String color;

  // super keyword is used to call the constructor of the parent class which is
  // Animal class here
  Dog({required super.name, required this.color});

  /// We have to write this method Dart will give error if we don't
  // @override indicates that this method replaces the parent class version of
  // method or property with our own custom implementation
  @override
  void makeSound() {
    print('$name says Woof Woof');
  }
}

void main() {
  // will throw error because we cannot create an instance of an abstract class
  // Animal animal = Animal(name: 'Lion');

  /// Creating an instance/object of Dog class
  Dog dog = Dog(name: 'Tom', color: 'Black');

  /// Accessing properties/variables and methods/functions from the Animal class
  dog.eat();
}
