//Null Safety 란?
// 개발자가 널 에러를 피할 수 있도록 도와주는 다트 언어에 기능이다.

//코드의 시작점
void main() {
  String name = '길동';
  int age = 30;

  //String? 스트링 옵셔널 타입이다. => 스트링 타입이랑 다음
  //옵셔널 타입은 null값 허용가능
  String? nullableName;
  int? nullableAge;

  print('name : ${name}');
  print('age : ${age}');
  //print('nullableName : ${nullableName.length}'); 컴파일 시점에 오류를 미리 확인할 수 있다.
  print('nullableAge : ${nullableAge}');

  //방어적 코드
  if (nullableName != null) {
    print(nullableName.length);
  }
} //end of main
