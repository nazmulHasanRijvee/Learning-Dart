void main() {
  final list1 = [1, 2, 3, 4];
  final string1 = 'Flutter';

  /// is keyword in dart is used to check a type of the variable
  // if the type matches it returns true and is! not can be used too
  // to find if its not certain type
  final bool isList = string1 is List;
  final bool isNotInt = list1 is! int;
  final bool isNotString = list1 is! String;

  print(isList);
  print(isNotInt);
  print(isNotString);

  /// We can also check objects using is keyword in OOP
  // Checking if an object is of a specific class type
  Animal myAnimal = Dog('Buddy');
  Animal aDuck = Duck('Donald');

  // When Dart knows an object is of a certain type due to an 'is' check,
  // it automatically promotes its type within that scope, allowing access
  // to type-specific members without explicit casting (as).
  if (myAnimal is Dog) {
    // Inside this block, 'myAnimal' is automatically promoted to 'Dog' type.
    myAnimal.bark(); // We can call bark() directly.
  } else {
    myAnimal.makeSound();
  }

  // Checking if an object implements an interface class
  print('\n--- Interface Checking with "is" ---');
  if (aDuck is Swimmer) {
    print(
      '${aDuck.name} is a Swimmer.',
    ); // Type promotion also works for interfaces
  } else {
    aDuck.makeSound();
  }
}

// Define a base class
class Animal {
  String name;
  Animal(this.name);
  void makeSound() {
    print('$name makes a sound.');
  }
}

// Define a subclass
class Dog extends Animal {
  Dog(super.name);
  void bark() {
    print('$name barks loudly!');
  }
}

// Define an interface (Dart doesn't have explicit interface keyword,
// any class can be used as an interface)
abstract class Swimmer {
  void swim();
}

// Implement the Swimmer interface
class Duck extends Animal implements Swimmer {
  Duck(super.name);

  @override
  void swim() {
    print('$name is swimming.');
  }
}
