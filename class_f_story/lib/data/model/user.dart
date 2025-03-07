//모델링 -> 현실세계에서 존재하는 데이터를 구조화 시킨다.
// 즉, 우리 플러터 내부에서 사용하는 데이터를 모델이라 부르자
//게시글의 주인이 누구인가--> 모델링 -> user 인증 여부

//인증여부 --> sessionUser로 진행할 예정

class User {
  int? id;
  String? username;
  String? imgUrl;

  //네임드 생성자  => 미리 생성한 후
  User.fromMap(Map<String, dynamic> map)
      : this.id = map["id"],
        this.username = map["username"],
        this.imgUrl = map["imgUrl"];
}
