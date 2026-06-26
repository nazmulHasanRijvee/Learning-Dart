class Student implements Comparable<Student> { // implement Comparable<Student> interface for compareTo() method

  final int marks;
  const Student(this.marks);

  /// without overriding it Dart doesn't know how to compare to Objects
  // with it now Dart compares and sorts based on marks
  @override
  int compareTo(Student other) {
    return marks.compareTo(other.marks);
    // for reverse order
    // return other.marks.compareTo(marks);
  }
  @override
  String toString() {
    return 'Marks: $marks';
  }
}
void main () {
  final List<Student> students = [
    Student(90),
    Student(76),
    Student(81)
  ];
  students.sort(); // sorts based on marks
  print(students); // [Marks: 76, Marks: 81, Marks: 90]
}