void main() {
  //선택적 명명 매개변수 => 위치가 변경이 되어도 문제없다.
  Dog d1 = Dog(name: "허비", age: 5, color: "브라운");
  print(d1.color);
}

//선택적 매개변수
//선택적 위치 매개변수(Optional positional parameters)
//선택적 명명 매개변수(Optional named parameter)
//? 붙으면

class Dog {
  String name;
  int age;
  //String 옵셔녈 타입은 null값을 허용시키는 타입이다.
  String? color;
  int? thirsty;
  //생성자 - 기본 생성자는 만들지 않으면 컴파일러 자동으로 넣어줌
  // {} 를 붙이면 선택적 명명 매개변수
  Dog({
    required this.name,
    required this.age,
    this.color = "블랙",
    this.thirsty = 100,
  });
}

class Water {
  double liter = 2.0; //물 2리터

  void drink() {
    liter -= 0.1;
  }
}
