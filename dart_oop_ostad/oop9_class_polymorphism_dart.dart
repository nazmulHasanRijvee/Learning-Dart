/// Demonstration of polymorphism
// it works with inheritance and interfaces
// It is like a socket or plug for different classes.
// Like a charging plug where different types of charger
// (Mobile charger, laptop charger) can be plugged in depending
// on the user choice. We don’t change the socket; we just plug in different chargers
abstract class PaymentGateway {
  void cashIn(double amount);
  void cashOut(double amount);
}

/// Inheritance: Child class inherits properties/ variables and methods from the parent class
// extends keyword is used to inherit from a class
class Bkash extends PaymentGateway {
  // overriding the abstract methods with our own implementation
  // using @override annotation
  @override
  void cashIn(double amount) {
    print("Bkash: Cash out charge 20 taka per 1000 taka");
  }

  @override
  void cashOut(double amount) {
    print("Bkash: Cash in free");
  }
}

class Nagad extends PaymentGateway {
  @override
  void cashIn(double amount) {
    print("Nagad: Cash out charge 10 taka per 1000 taka");
  }

  @override
  void cashOut(double amount) {
    print("Nagad: Cash in free");
  }
}

void main() {
  String userChoice = "Nagad"; // imagine user selects Nagad
  double amount = 5000;

  // Polymorphism allows our gateway variable to point to different
  // objects (Bkash, Nagad), and the correct overridden method is executed at
  // runtime depending on the object type. Polymorphism lets us declare an interface
  // variable first then decide the actual object type later.
  // polymorphism is like same method call: .cashIn(amount);
  // But different behaviors depending on the object (Bkash or Nagad)
  PaymentGateway gateway;

  if (userChoice == "Bkash") {
    gateway = Bkash();
  } else if (userChoice == "Nagad") {
    gateway = Nagad();
  } else {
    throw Exception("Invalid payment option");
  }

  // Main logic stays the same regardless of which service is chosen
  gateway.cashIn(amount);
  gateway.cashOut(amount);
}
