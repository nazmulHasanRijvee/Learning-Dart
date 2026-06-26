class User {

  final String name;
  const User(this.name);

  /// Without overriding it Dart thinks both Objects are different
  // even though they have the same value. Because Dart checks if equal using
  // memory allocation. But by overriding this now checks if equal using
  // a common value
  @override
  bool operator ==(Object other) {
    return other is User && other.name == name;
  }

  // necessary to override the hashCode getter method to the common
  // values .hashCode so hashCode remains same for multiple objects with the same value
  @override
  int get hashCode => name.hashCode;
}

void main () {
  final u1 = User("Nazmul");
  final u2 = User("Nazmul");
  print(u1 == u2); // true
}
