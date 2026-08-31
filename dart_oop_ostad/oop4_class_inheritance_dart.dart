/// Creating a class named Father for inheritance example
// Inheritance is a mechanism where a new class inherits properties and methods from an existing class
class Father {
  // Properties or variables of the class
  String name;
  String land = '100 bigha';
  String house = 'Tin basha';

  // Constructor
  Father({required this.name}) {
    print('$name Father object created');
  }

  // Method or function of the class
  void inComeSource() {
    print('Father income source: farming');
  }
}

/// Inheritance: Child class inherits properties/ variables and methods from the Father class
// extends keyword is used to inherit from a class
class Son extends Father {
  // Here, Son class inherits properties and methods from Father class
  // We can also have our own properties and methods in the child class
  // Here, we are doing
  String sonName;

  // property/ variable overriding of the parent class
  String land = '200 bigha';
  String house = 'Concrete building';

  // super keyword is used to call the constructor of the parent class which is
  // Father class here
  Son({required super.name, required this.sonName});

  /// @override indicates that this method replaces the parent class version of
  // method or property with our own custom implementation
  @override
  void inComeSource() {
    print('Son income source: App developer');
  }
}

void main() {
  /// Creating an instance/object of Son class
  Son nazmul = Son(name: 'Johir', sonName: 'Nazmul');

  /// Accessing properties/variables and methods/ functions from the Father class
  print(nazmul.name);
  print(nazmul.land);
  print(nazmul.house);
  nazmul.inComeSource();
  print(nazmul.sonName);
}
