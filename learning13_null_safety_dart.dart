void main () {

  /// Nullable
  String? nickname; // Nullable type, ? makes a variable nullable

  nickname = null;  // ✅ Allowed

  print(nickname);

  /// Null-aware Access
  String? name;

  // ignore: dead_code
  print(name?.length); // ✅ Safe. Prints "null" instead of throwing an error,
  // when we don’t know if an object is null or not, use ?. to safely access its members
  // ?. is the null-aware operator (null safety feature).
  // It says if the thing before me is NOT null, go ahead and do what’s after me. Otherwise, just return null and skip it.

  /// Null-coalescing
  String? name2;

  print(name2 ?? "Guest"); // ✅ Prints "Guest" if name is null, provides a fail-safe or
  // fallback value when something is null

  /// Null-coalescing Assignment
  String? city;

  city ??= "Dhaka"; // Assign "Dhaka" only if city is null, assign a value only if the variable is null

  print(city); // "Dhaka"

  /// Null Assertion
  int? age = 20;

  // ignore: unnecessary_non_null_assertion
  int sureAge = age!; // ✅ Safe here because age is not null, ! tells dart I know this value is not null,
  //if you’re wrong, it will crash at runtime

  print(sureAge);

  /// late keyword
  token = "abc123";  // Must assign before use

  print(token);      // ✅ Works fine

}

late String token; // Sometimes we can’t initialize a variable immediately, but we promise to do it before using it
// that's where late comes in
