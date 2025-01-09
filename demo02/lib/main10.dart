void main() {
  // Dog d1 = new Dog(); //인스턴스화 되었다.
  Dog d2 = Dog(); //dart 에서는 new를 생략할 수 있다.
  print('강아지 이름 ${d2.name}');
  print('강아지 나이 ${d2.age}');
  print('강아지 색상 ${d2.color}');
  print('강아지 목마름 지수 ${d2.thirsty}');
  //d2.thirsty = 50;
  d2.drinkwater();
  d2.drinkwater();
  d2.drinkwater();
  d2.drinkwater();
  d2.drinkwater();
  print('강아지 목마름 지수 ${d2.thirsty}');
}

//접근제어자 기본(public)   _(private) 두가지만 존재함

//자바 -> 하나의 자바 파일에 public class를 두개 선언할 수 없다.
class Dog {
  //변수에 선언과 동시에 초기화(값을 할당)
  String name = '토토';
  int age = 5;
  String color = 'black';
  int thirsty = 100;

  //물을 마실때마다 갈증지수가 10씩 내려감
  void drinkwater() {
    thirsty = thirsty - 10;
  }
}

class Water {
  double liter = 2.0; //물 2리터

  void drink() {
    liter -= 0.1;
  }
}
