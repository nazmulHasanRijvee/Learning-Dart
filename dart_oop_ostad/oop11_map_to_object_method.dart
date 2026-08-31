class Book {
  final String title;
  final String author;
  final String category;
  final double price;

  const Book({
    required this.title,
    required this.author,
    required this.category,
    required this.price,
  });

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Category: $category');
    print('Price: \$$price');
  }

  /// Named constructor to create a Book object from a Map
  Book.toBook(Map<String, dynamic> map)
    : title = map['title'],
      author = map['author'],
      category = map['category'],
      price = map['price'];
}

void main() {
  final bookMap = {
    'title': 'Data Structures and Algorithms',
    'author': 'John Doe',
    'category': 'Computer Science',
    'price': 49.99,
  };

  final book = Book.toBook(bookMap);

  book.displayInfo();
}
