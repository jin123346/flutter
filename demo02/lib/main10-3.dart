void main() {
  //선택적 명명 매개변수 => 위치가 변경이 되어도 문제없다.
  Dog d1 = Dog(name: "허비", age: 5, color: "brown", thirsty: 100);
}

//선택적 매개변수
//선택적 위치 매개변수(Optional positional parameters)
//선택적 명명 매개변수(Optional named parameter)

class Dog {
  String name;
  int age;
  String color;
  int thirsty;
  //생성자 - 기본 생성자는 만들지 않으면 컴파일러 자동으로 넣어줌
  // {} 를 붙이면 선택적 명명 매개변수
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}

class Water {
  double liter = 2.0; //물 2리터

  void drink() {
    liter -= 0.1;
  }
}
