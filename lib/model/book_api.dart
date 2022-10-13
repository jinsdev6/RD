class Book {
  final String title;
  final String author;
  final String publisher;
  Book({
    required this.title,
    required this.author,
    required this.publisher,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        title: json['title'],
        author: json['author'],
        publisher: json['publisher']);
  }

  factory Book.init() =>
      Book(title: 'Error', author: 'Error', publisher: 'Error');
}
