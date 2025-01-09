//null 억제 연산자(!)
// 개발자가 해당 값이 null 아님을 확신하고, 예외를 발생시키지 않을때 유용하게 사용할 수 있다.

//코드의 시작

void main() {
  String? nullableName = nullAbleName2();

  //1. null 억제 연산자 사용해보기
  // 널 체크 연산자 또는 널 병합 연산자를 사용할 수 있지만,
  // null이 아님을 확신 한다면 개발자가 널 억제 연산자를 사용할 수 있다.
  String forceName = nullableName!;
  print('forceName = ${nullableName}');
}

String? nullAbleName2() {
  return '홍길동';
}
