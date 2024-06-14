class Book {
  int id;
  String title;
  String author;

  Book({
    required this.id,
    required this.title,
    required this.author,
  });

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }
}

class Library {
  int id;
  String name;
  List<Book> books;

  Library({
    required this.id,
    required this.name,
    required this.books,
  });

  String getName() {
    return name;
  }

  List<Book> getBooks() {
    return books;
  }

  void addBook(Book book) {
    books.add(book);
  }
}

// Dari 2 class diatas, buatlah desain Class Diagramnya.
// Untuk software desaiinnya bebas.
// Dibuat di google docs
// 1. Gambar Desan Class Diagram yang sudah jadi
// 2. Penjelasan mengenai diagram diatas.
// 3. Jelaskan juga code main dibawah.

// Abaikan (tapi jangan dihapus)
void main() {
  Book book1 = Book(id: 1, title: '1984', author: 'George Orwell');
  Book book2 = Book(id: 2, title: 'Brave New World', author: 'Aldous Huxley');
  Book book3 =
      Book(id: 3, title: "bumi manusia", author: "Pramodya Ananta Toer");

  Library library = Library(id: 1, name: 'City Library', books: [book1]);

  library.addBook(book2);
  library.addBook(book3);

  print('Library: ${library.getName()}');
  print('Books:');
  for (var book in library.getBooks()) {
    print(' - ${book.getTitle()} by ${book.getAuthor()}');
  }
}
