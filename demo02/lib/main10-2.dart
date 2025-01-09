void main() {
  //생성자
}

//접근제어자 기본(public)   _(private) 두가지만 존재함

//Dart라는 언어는 기본적으로 null 값을 허용하지 않는다.
class Dog {
  String name;
  int age;
  String color;
  int thirsty;
  //생성자 - 기본 생성자는 만들지 않으면 컴파일러 자동으로 넣어줌
  Dog(this.name, this.age, this.color, this.thirsty);
  //Dog(this.name,this.age,this.color,this.thirsty) {} ;  생성자 구현부분 생략 가능
  //Dog(this.name, this.thirsty); 이거 안됨 -=> dart에서는 생성자 오버로딩이 없다.
}

class Water {
  double liter = 2.0; //물 2리터

  void drink() {
    liter -= 0.1;
  }
}
