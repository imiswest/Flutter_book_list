import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';
import 'package:flutter_book_list/models/book.dart';
import 'package:flutter_book_list/repository/book_repository.dart';

/// ListScreen에 있는 BookTile을 선택하면 해당 도서에 대한 정보가 든 DetailScreen이 나타나도록 하는 방법
/// 1. ListScreen에서 DetailScreen으로 이동하는 코드 작성하기
///     (OnTap과 Navigator기능 활용)
/// 2. DetailScreen에서 받고 싶은 데이터 선언하기
///     (@override위에 생성자로 변수 선언하고 , 필드를 추가해 고정된 값이 아닌 변수에 해당하는 값이 화면에 출력되도록 수정)
/// 3. DetailScreen으로 이동하는 코드에 데이터 넘겨주기
///     ( DetailScreen( A:A, B:B ...) 이런 식으로 )

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('도서 목록 앱'),
        ),
      ),

      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index){
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book; //생성자로 선언된 변수

  BookTile({
    required this.book
});
  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailScreen(
            title: title,
            subtitle: subtitle,
            description: description,
            image: image,
          ),
          ),
        );
      }, // 여기서 title, subtitle, description, image 데이터를 다음 화면으로 이동하며 넘기게 됨
    );
  }
}