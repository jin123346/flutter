//익명 함수
//람다 표현식  ==> 화살표 함수
void main() {
  //1단계 - 이름이 없는 함수( 선언을 하더라도 오비ㅜ에서 사용할 방법이 없다.)
  // 변수에 할당하지 않고 바로 익명 함수를 호출하는 것은 dart에서 불가능하다.

  (int number) {
    return 100 + number;
  };

  //2.단계  - 함수를 변수에 담을 수 있다.
  // .Dart 함수에 타입은 Function이다.
  Function(int) square = (int number) {
    return number * number;
  };

  //3.단계
  var sub = (int number) {
    return number * number;
  };

  Function(int, int) sub2 = (int number1, int number2) {
    return number1 - number2;
  };

  //function이라고 할 수 있고, var로 할 수 있다.

  //4.단계 - dart 에서는 매개변수 데이터 타입도 생략이 가능하다.
  var add = (number1, number2) {
    return number1 + number2;
  };

  print("2의 제곱은 ${sub(2)}");
  print("두 수의 빼기 연산 ${sub2(5, 2)}");
  print("두 수의 덧셈 연산 ${add(3, 4)}");

  // 문제 1
  // 두 수의 곱하기 익명 함수를 정의하고 그 함수를 변수에 담는 식을완성하세요
  var multi = (num1, num2) {
    return num1 * num2;
  };
  print("두 수의 곱  ::: ${multi(3, 4)}");
}
