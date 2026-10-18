void main() async {

  /// RECORD in Dart + FIELD ACCESS
  // A Record is an anonymous, immutable (fixed size), heterogeneous (can contain
  // different types of data), typed bundle of values.
  // Records are real values: store them in variables, nest them, pass them to
  // functions, return them, put them in Lists / Maps / Sets.

  /// 1. Basics
  // It can be declared in two ways, using var and ( , )
  (String, int) record1;
  record1 = ("Nazmul", 23);
  print(record1);

  // Positional fields go as they are, named fields use `name: value`
  var record2 = ('first', a: 2, b: true, 'last');

  // Named fields get a getter with the SAME name
  print(record2.a); // 2
  print(record2.b); // true

  // Positional fields get getters $1, $2, ... (counting starts at 1, not 0)
  print(record2.$1); // first
  print(record2.$2); // last
  // NOTE: $ numbering SKIPS named fields. a: and b: do not take a number,
  // so 'last' is $2 and not $4.


  /// 2. RECORD Declaration and Positioned, Named Fields
  // Using comma separated types inside parentheses ( , ).
  // Named fields go inside a { } section AFTER all positional fields.

  // Only positional
  (String, int) positional = ('A string', 123);

  // Only named (note the extra { } inside the parentheses)
  ({int a, bool b}) named = (a: 123, b: true);

  // Mixed: positional first, then the { } section
  (int, {String label}) mixed = (7, label: 'seven');

  print(positional); // (A string, 123)
  print(named); // (a: 123, b: true)
  print(mixed); // (7, label: seven)


  /// 3. STRUCTURAL TYPING (there is no "class declaration" for a record)
  // A record's SHAPE = set of fields + their types + their names (if any).
  // The shape alone decides the type. Each field keeps its OWN type.
  (num, Object) pair = (42, 'a');

  var first = pair.$1; // static type: num,    runtime type: int
  var second = pair.$2; // static type: Object, runtime type: String

  print(first.runtimeType); // int
  print(second.runtimeType); // String


  /// 4. SHAPE RULES:
  // NAMED fields   -> names are PART of the type (different names = different type)
  // POSITIONAL     -> names in the annotation are documentation only
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  // recordAB = recordXY; // ❌ compile error, different named shapes

  (int a, int b) posAB = (1, 2);
  (int x, int y) posXY = (3, 4);

  posAB = posXY; // ✅ OK, positional names are only documentation

  print(recordAB);
  print(recordXY);
  print(posAB); // (3, 4)


  /// 5. RECORD EQUALITY
  // Records auto-generate == and hashCode from their structure.
  // Equal if: same shape AND all corresponding fields are equal.

  // Positional names don't matter -> same shape -> equal
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // true

  // Named field names DO matter -> different shape -> NOT equal
  ({int x, int y, int z}) namedPoint = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) namedColor = (r: 1, g: 2, b: 3);
  print(namedPoint == namedColor); // false (analyzer lint: equals on unrelated types)

  // ORDER of named fields is NOT part of the shape
  var r1 = (x: 1, y: 2);
  var r2 = (y: 2, x: 1);
  print(r1 == r2); // true


  /// 6. MULTIPLE RETURNS (the #1 real-world use of records)
  // Without records we'd need: a class (verbose) or List/Map (loses type safety).
  final (status, code) = getApiStatus();

  // Destructure positional fields directly into local variables
  print(status); // "Success"
  print(code); // 200

  // Destructuring named fields
  // :name is shorthand for name: name (variable gets the field's name).
  // Use name: newName to rename while destructuring.
  final (:message, :number) = getApiStatusNamed();

  print(message);
  print(number);

  // Renaming
  final (message: newMsg, number: newNum) = getApiStatusNamed();
  print(newMsg);
  print(newNum);

  listOfRecords();
  await parallelFutures();
}


/// Returning multiple values
(String, int) getApiStatus() {
  return ("Success", 200);
}

({String message, int number}) getApiStatusNamed() {
  return (message:"Unauthorized", number: 401);
}


/// 9. LIST OF RECORDS (simple data without writing a class)
// Best when all items share the same shape.
// In Flutter, `icon` would be an Icon widget; plain String here so this file
// runs as pure Dart.
void listOfRecords() {
  final buttons = [
    (
    label: 'Button I',
    icon: 'upload_file',
    onPressed: () => print('Action -> Button I'),
    ),
    (
    label: 'Button II',
    icon: 'info',
    onPressed: () => print('Action -> Button II'),
    ),
  ];

  for (final button in buttons) {
    print('${button.label} / ${button.icon}');
    button.onPressed();
  }
}


/// 10. PARALLEL FUTURES of DIFFERENT types using Record
// .wait on a record of Futures returns a Future of a record, so each result
// keeps its own type (Future.wait on a List would force one common type).
Future<void> parallelFutures() async {

  // Both start immediately, total time ~200ms (not 400ms)
  final (count, title) = await (fetchCount(), fetchTitle()).wait;
  print('$title: $count'); // Movies: 42
}

Future<int> fetchCount() async {
  await Future.delayed(const Duration(milliseconds: 200));
  return 42;
}

Future<String> fetchTitle() async {
  await Future.delayed(const Duration(milliseconds: 200));
  return 'Movies';
}

// ============================================================================
// QUICK COMPARISON
// ----------------------------------------------------------------------------
// Record  -> light, immutable, value equality, no methods, no encapsulation
// Class   -> methods, encapsulation, validation, inheritance, identity/custom ==
// List    -> homogeneous, growable, positional only, loses per-field types
// Map     -> string keys, runtime lookups, loses per-field types, typo-prone
// ============================================================================