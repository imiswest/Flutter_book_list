import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/detail_screen.dart';

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

      body: ListView(
        children: <Widget> [ //BookTile 두개와 ListTile 두개. BookTile은 ListTile을 return함
          BookTile( //ListView의 한 줄
            title: '예제부터 배우는 거꾸로 파이썬',
            subtitle: '투자 · 로또 · 리뷰 등 6가지 유용한 주제로 시작하는 데이터 크롤링',
            description: '*실생활에 쓸모 있는 것만 만든 비전공자 개발 노트* IT 비전공자라도 프로그래밍 문법을 몰라도 재미있게 코딩하고 원하는 것을 직접 만든다!',
            image: 'https://blog.kakaocdn.net/dn/bryLDA/btrIMBW3FAB/eFTxvdukNYKr4X8TmtpDik/img.jpg'
          ),
          BookTile(
            title: '쉽고 빠른 플러터 앱 개발',
            subtitle: 'Flutter & Dart로 화면 구현ㆍ상태 관리ㆍ데이터 처리ㆍ디자인 패턴 익히기',
            description: '인프런의 인기 강의, “무작정 시리즈” 제작자가 직접 집필한 플러터 도서. 초심자들도 어렵지 않은, 쉽고 빠른 플러터 앱 개발!',
            image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FFjoWL%2FbtrAwDwUGux%2FyBbD9J9q3SEABTauWcBGqK%2Fimg.png'
          ),
          ListTile(
            title: Text('내일부터 디지털 마케터'), //ListTile 가운데에 나타날 위젯
            leading: Image.network( //ListTile 맨 앞에 나타날 위젯
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fepfx3z%2FbtrAx6LRz9B%2FKRyPpyZcYvtiKYJHb8pKS0%2Fimg.png'
            ),
          ),
          ListTile(
            title: Text('오늘도, 우리는 코딩을 합니다.'), //ListTile 가운데에 나타날 위젯
            leading: Image.network( //ListTile 맨 앞에 나타날 위젯
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcAup5M%2Fbtq4MTXkoQJ%2FaIsckQKE10dlCrVCBI4aq1%2Fimg.png'
            ),
          ),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image; //생성자들로 선언된 변수 4개

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
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