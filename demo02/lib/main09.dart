//화살표 함수
//람다 표현식
void main() {
  int num1 = 500;

  int num2 = 10;

  //선언부
  int add(int n1, int n2) {
    //구현부
    return n1 + n2;
  }

  //구현부가 복잡하다면 람다 표현식보다 함수형식이 좋다.
  //람다식 => 구현부가 간단한 것만 가능함
  int add2(int n1, int n2) => n1 + n2;
  int sub(int n1, int n2) => n1 - n2;
  int mul(n1, n2) => n1 * n2;
  int div(n1, n2) => n1 / n2;
}

//재활용 하고 싶다면 ->  함수를 만들어주면됨 => 좀더 간결하고싶다면 => 화살표함수
