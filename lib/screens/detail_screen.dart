import 'package:flutter/material.dart';
import 'package:flutter_book_list/models/book.dart';

class DetailScreen extends StatelessWidget {
  final Book book;
  DetailScreen(
      { //필드를 추가해 고정된 값이 아닌 변수에 해당하는 값이 화면에 출력되도록 수정
      required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Column 내 children 총 5개
          Image.network(//Column 내 첫 번째 children
              book.image),

          Padding(
            //Column 내 두 번째 children
            padding: EdgeInsets.all(7),
          ),

          Row(
            //Column 내 세 번째 children
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Row 내 children 총 2개

              Container(
                //Row 내 첫 번째 children
                width: MediaQuery.of(context).size.width * 0.8,
                //MediaQuery를 활용해 사이즈를 설정할 수 있음음                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        book.title,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      book.subtitle,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                //Row 내 두 번째 children
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),

          Padding(
            //Column 내 네 번째 children
            padding: EdgeInsets.all(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                //Column 내 다섯 번째 children
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.blue,
                  ),
                  Text(
                    'Route',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.save,
                    color: Colors.blue,
                  ),
                  Text(
                    'save',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(book.description),
          ),
        ],
      ),
    );
  }
}
