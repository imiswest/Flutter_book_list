///실제 서버로부터 데이터를 가져오는 영역의 코드를 리포지토리라 부름

import 'package:flutter_book_list/models/book.dart';

class BookRepository {
  final List<Book> _dummyBooks = [
    Book( //ListView의 한 줄
        title: '예제부터 배우는 거꾸로 파이썬',
        subtitle: '투자 · 로또 · 리뷰 등 6가지 유용한 주제로 시작하는 데이터 크롤링',
        description: '*실생활에 쓸모 있는 것만 만든 비전공자 개발 노트* IT 비전공자라도 프로그래밍 문법을 몰라도 재미있게 코딩하고 원하는 것을 직접 만든다!',
        image: 'https://blog.kakaocdn.net/dn/bryLDA/btrIMBW3FAB/eFTxvdukNYKr4X8TmtpDik/img.jpg'
    ),
    Book(
        title: '쉽고 빠른 플러터 앱 개발',
        subtitle: 'Flutter & Dart로 화면 구현ㆍ상태 관리ㆍ데이터 처리ㆍ디자인 패턴 익히기',
        description: '인프런의 인기 강의, “무작정 시리즈” 제작자가 직접 집필한 플러터 도서. 초심자들도 어렵지 않은, 쉽고 빠른 플러터 앱 개발!',
        image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FFjoWL%2FbtrAwDwUGux%2FyBbD9J9q3SEABTauWcBGqK%2Fimg.png'
    ),
  ];

  List<Book> getBooks() { //getBooks()라는 메서드(함수)를 작성해 더미데이터를 가져올 수 있도록 함함
   return _dummyBooks;
  }
}
