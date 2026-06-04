/// => operator is the short hand for { return code;} used for single line codes
void sayHello () => print('Hello World');


/// By using {} and required or nullable takes two name parameters which are string and int
void placeOrder ({required String foodName, int? quantity}) {
  print('\nCustomer ordered $quantity $foodName');
  print('Preparing $foodName');
  print('$foodName serve\n');
}


 /// A function that returns a string value
String todayOffer(){
  return "Buy 1 and get 1 free";
}


/// This one returns a double value
double calculateArea(double length, double width){
  return length * width;
}


/// Anonymous function or lambda function () {} or () =>
var notificationCheck = () {
  print("New notification");
};


/// Arrow function
int calclulateFare(int distance) => distance*10;


/// Optional parameter using []
// name is optional here
void calculateAreaPrm(double length, double width, [String? name]) {
  double area = length * width;

  if (name != null){
    print('Area = ${area.toStringAsFixed(2)} Name is $name');
  } else {
    print('Area = ${area.toStringAsFixed(2)} No name');
  }
}


/// Named Parameters with positioned parameters
/// using {double width = 0.0} or required keyword
// The order matters:
// Positioned parameters first, then named parameter (not at first)
// We can also provide default values for methods if no parameter is given
// in named parameters (VERY USEFUL)
void namedMethod(int age, double height, {String name = 'Unknown'}) {

  print('My name is $name and age is $age, I\'m $height feet tall');

}


/// required keyword in named parameters
// using required keyword we don't have to set a default value for the parameters
// it is required to assign the value, if not compiler will show error
void requiredNamedMethod (int age, String? name,  {required double height}) {

  if (name != null){
    print('I am $age years old, my height is ${height.toStringAsFixed(2)}, Name is $name');
  } else {
    print('I am $age years old, my height is ${height.toStringAsFixed(2)}, No name');
  }

}


/// Optional parameters with named parameters
// In named parameter just make the parameter nullable and it becomes optional
// no required keyword or value assignment needed
void optionalNamedMethod ({int age = 0, String? name, required double height}) {

  if (name != null){
    print('I am $age years old, my height is ${height.toStringAsFixed(2)}, Name is $name');
  } else {
    print('I am $age years old, my height is ${height.toStringAsFixed(2)}, No name');
  }

}

void main () {

  
  /// Calling the function which means running the code of the function
  sayHello();
  

  /// Usage of function
  placeOrder( foodName: "Pizza", quantity:  2);
  placeOrder(foodName: "Burger", quantity:  1);
  placeOrder( foodName: "Pasta",quantity:  3);


  /// Usage of a return function
  print(todayOffer());
  print(calculateArea(5.5, 2.2).toStringAsFixed(2));

  
  /// Using anonymous function
  notificationCheck();

  
  /// Using arrow function
  print('Fare = ${calclulateFare(10)}');

  
  /// Optional parameter function
  calculateAreaPrm(10.5, 5.6);
  calculateAreaPrm(11.12, 12.5, "Mirpur");


  /// Named Parameter function or method
  // with positioned parameters
  namedMethod(23, 6.1, name: 'Nazmul' );

  // required keyword in named parameters
  requiredNamedMethod(23, null, height: 6.123);

  // Optional parameters with named parameters
  optionalNamedMethod(age: 24, height: 6.657);
  // using or passing value to optional parameter
  optionalNamedMethod(age: 24, name: 'Nazmul', height: 5.121);

}