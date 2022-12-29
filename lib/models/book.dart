///Book 모델(데이터베이스와 관련된 용어, 말 그대로 사물을 코드로 본뜨는 작업)을 만들음
///Book 객체를 기반으로 더미 데이터를 생성할 예정

class Book{
  final String title;
  final String subtitle;
  final String description;
  final String image;

  Book({ //필드를 추가
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
}

//실제 서버로부터 데이터를 가져오는 영역의 코드를 리포지토리라 부름