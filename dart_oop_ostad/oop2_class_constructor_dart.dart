class Mobile {
  // Properties or variables of the class
  // Which can accessed using dot after object
  int year;
  String modelName;
  String brandName;

  /// Constructor - A special method that:
  // Runs automatically when creating a new object instance
  // Initializes the object's properties and state
  // Sets up any required dependencies or configurations
  /// Key concepts:
  // `required` - Makes parameters mandatory (compile-time enforcement)
  // `this.property` - References the current instance's property
  // Named parameters - Improve readability and prevent argument order errors
  /// Best practices:
  // Use named parameters for better API clarity
  // Mark essential parameters as `required`
  // Keep initialization logic simple and focused
  Mobile({
    required this.year,
    required this.modelName,
    required this.brandName,
  });

  // Method or function of the class
  // Which can accessed using dot after object
  charging() {
    print('Mobile Charging...');
  }

  unlock() {
    print('Mobile Unlocked...');
  }
}

void main() {
  /// Creating an object of the Mobile class. Syntax class_name object_name = class_name();
  // And initializing the variables of the class using the constructor
  Mobile iphone = Mobile(year: 2016, modelName: 'iPhone x', brandName: 'Apple');

  /// Printing the values of the variables of the class using the object
  print('Model Name: ${iphone.modelName}');
  // Calling the method or function of the class using the object
  iphone.charging();
  iphone.unlock();
}
