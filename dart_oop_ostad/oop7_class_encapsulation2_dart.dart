import 'oop6_class_encapsulation_dart.dart';

/// Importing the Restaurant class file

void main() {
  Restaurant bfc = Restaurant();
  bfc.order("Chicken Fry");

  // The following lines will give error because we cannot access private
  // members from outside the class cause its encapsulated
  // bfc._prepareItem("Chicken Fry");
  // bfc._shopping("Chicken Fry");

  // accessing private property or members using getter method
  print(bfc.getId);

  // accessing private property or members using setter method and updating the
  // value
  bfc.setId = 200;
  print(bfc.getId);

  /// BankAccount example
  BankAccount account = BankAccount(123);
  // accessing private property using getter method
  print(account.getBalance(123));
  account.deposit(500);
  print(account.getBalance(123));
  account.withdraw(200);
  print(account.getBalance(123));
  // setting private property using setter method
  account.setBalance = 1000;
  print(account.getBalance(123));
}
