import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('예제부터 배우는 거꾸로 파이썬')),
      body: Column(
        children: [ //Column 내 children 총 3개
          Image.network( //Column 내 첫 번째 children
              'https://blog.kakaocdn.net/dn/bryLDA/btrIMBW3FAB/eFTxvdukNYKr4X8TmtpDik/img.jpg'),

          Padding( //Column 내 두 번째 children
            padding: EdgeInsets.all(3),
          ),

          Row( //Column 내 세 번째 children
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ //Row 내 children 총 2개

              Container( //Row 내 첫 번째 children
                width: MediaQuery.of(context).size.width * 0.8,
                //MediaQuery를 활용해 사이즈를 설정할 수 있음음                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '예제부터 배우는 거꾸로 파이썬',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '투자 · 로또 · 리뷰 등 6가지 유용한 주제로 시작하는 데이터 크롤링',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container( //Row 내 두 번째 children
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
          Padding( //Column 내 두 번째 children
            padding: EdgeInsets.all(3),
          ),

        ],
      ),
    );
  }
}
