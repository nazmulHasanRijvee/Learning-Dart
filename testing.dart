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

// Define another subclass
class Cat extends Animal {
  Cat(super.name);
  void meow() {
    print('$name meows softly.');
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

void main() {
  print('--- Demonstrating the "is" keyword in Dart ---');

  // 1. Checking if an object is of a specific class type
  Animal myAnimal = Dog('Buddy');
  Animal aDuck = Duck('Donald');


  // Using 'is' with type promotion (smart casting)
  // When Dart knows an object is of a certain type due to an 'is' check,
  // it automatically promotes its type within that scope, allowing access
  // to type-specific members without explicit casting.
  if (myAnimal is Dog) {
    // Inside this block, 'myAnimal' is automatically promoted to 'Dog' type.
    myAnimal.bark(); // We can call bark() directly.
  } else {
    myAnimal.makeSound();
  }

  // 2. Checking if an object implements an interface
  print('\n--- Interface Checking with "is" ---');
  if (aDuck is Swimmer) {
    print('${aDuck.name} is a Swimmer.');
    // Type promotion also works for interfaces
  } else {
    aDuck.makeSound();
  }
}