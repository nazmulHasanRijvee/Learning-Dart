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


/// This one returns a doule value
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
void calculateAreaPrm(double length, double width, [String? name]) {
  double area = length * width;

  if (name != null){
    print('Area = ${area.toStringAsFixed(2)} Name is $name');
  } else {
    print('Area = ${area.toStringAsFixed(2)} No name');
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
  

}