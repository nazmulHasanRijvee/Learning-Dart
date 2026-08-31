/// Creating a class for encapsulation
class Restaurant {
  int _id = 187;

  // getter method for showing private property outside the class
  // getter method doesn't take any parameter
  int get getId => _id;

  // setter method for setting private property outside the class
  set setId(int value) => _id = value;

  void order(String item) {
    print("$item ordered");
    _prepareItem(item);
    _shopping(item);
  }

  /// using _ before a method or property makes it private or encapsulated
  // so that it cannot be accessed from outside the class
  void _prepareItem(String item) {
    print("$item is being prepared");
  }

  void _shopping(String item) {
    print("Shopping for $item");
  }
}

/// Another example of encapsulation
class BankAccount {
  double _balance = 0.0;
  final int _pin;

  // we can't use named parameter with private property or required property
  BankAccount(this._pin);

  // a method to access private or encapsulated property
  double getBalance(int pin) {
    if (pin == _pin) {
      return _balance;
    } else {
      // throwing exception if PIN is invalid
      throw Exception("Invalid PIN. Access denied.");
    }
  }

  // setter method to set private or encapsulated property
  set setBalance(double amount) => _balance = amount;

  void deposit(double amount) {
    _balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}");
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew: \$${amount.toStringAsFixed(2)}");
    } else if (amount <= 0) {
      print("Withdrawal amount must be positive and greater than 0.");
    } else {
      print(
        "Insufficient funds for withdrawal of \$${amount.toStringAsFixed(2)}",
      );
    }
  }
}
