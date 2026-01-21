import 'exercise.dart'; // I thought there is a trick here :)

void main(){

  Author author1 = Author('Ahmed', 'Ahmed@gmail.com');
  Author author2 = Author('Ali', 'Ali@gmail.com');
  Author author3 = Author('Azoz', 'azoz@gmail.com');

  Book book1 = Book(name: 'OOP', isbn: '1234', author: author1, editionNumber: 1);
  Book book2 = Book(name: 'DAA', isbn: '1114', author: author2, editionNumber: 2);
  Book book3 = Book(name: 'Data science', isbn: '4444', author: author3, editionNumber: 3);

  print('The ID of the 1st author is: ${author1.authID}');
  print('The ID of the 2nd author is: ${author2.authID}');
  print('The ID of the 3rd author is: ${author3.authID} \n');

  Customer customer1 = Customer('Mohammed', 'Mohammed123@gmail.com');
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}
