//널 체크 연산자 (?.) 와 널병합연산자(??) 에 대해서 알아보자

//코드의 시작점
void main() {
  //1. 널 체크 연산자
  String? userName = getNullableUserName();
  int? userNameLength = userName?.length; // null체크 연산자

  print('사용자 이름의 길이 : ${userNameLength}');
  print('0---------------------');

  //2. 널 병합 연산자
  String finalUserName = userName ?? '홍길동';
  // userName의 값이  null인 경우, ?? 이후의 값을 default로 초기화됨
  print('사용자 finalUserName : ${finalUserName}');
  print('----------------------');

  //3. ?. 와 ??를 함께 사용하는 예시
  String upperOrNoName = userName?.toUpperCase() ?? 'upper';
  print('?. 와 ?? 를 함께 사용  : ${upperOrNoName}');
} //end of main

//함수를 만들기
//선택적 명명 매개변수
String? getNullableUserName({String? name}) {
  return name;
}
