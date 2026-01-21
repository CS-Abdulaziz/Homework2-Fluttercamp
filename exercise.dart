class Person{
  String? name;
  String? email;

  Person(this.name, this.email);
}

class Author extends Person{
  static int id = 0;
  int? authID;
  Author(super.name, super.email){
    authID = ++id;
  }

  void printAuthorInfo(){
    print('Author name: $name, Email: $email');
  }
}

class Book{

  String? name;
  String? isbn;
  int? editionNumber;
  Author? author;

  Book({this.name, this.isbn, this.author, this.editionNumber});

  void printBook(){
      print('Book name: $name, ISBN: $isbn, editionNumber: $editionNumber');
  }

}

class Customer extends Person{

  List<Book> bookList = [];
  Customer(super.name, super.email);

  void addBook(Book book){

    bookList.add(book);
  }

  void printInformation(){

    print('Customer info:');
    print('Name: $name, Email: $email');
    print('-' * 100);
    
    for (var book in bookList!) {
      book.printBook();
      book.author!.printAuthorInfo();
      print('-' * 100);
    }
  }
}


