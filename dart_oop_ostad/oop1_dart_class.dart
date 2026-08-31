///  Creating a class in Dart
class Student {
  // Properties or variables of the class
  late String studentName;
  late int age;
  late String address;

  // Constructor is a special method that is called when an object is created
  // and it takes the values to initialize the variables of the class
  //Student(this.studentName, this.age, this.grade);

  // Method or function of the class
  void displayInfo() {
    print('Name: $studentName, Age: $age, Grade: $address');
  }
}

void main() {
  /// Creating an object of the Student class
  Student student1 = Student();
  // Prints the instance of the class
  print(student1);

  /// Accessing the variables of the class using the dot after object
  student1.studentName = 'John Doe';
  student1.age = 20;
  student1.address = 'Dhaka';
  // Printing the values of the variables of the class using the object
  print('Name: ${student1.studentName}');

  /// Calling the method or function of the class using the object
  student1.displayInfo();
}
