void main() {
  Dog d1 = Dog();
  print(d1.thirsty);
  Water water = Water();
  d1.drinkWater(water);
  d1.drinkWater(water);
  d1.drinkWater(water);
  d1.drinkWater(water);
  print(d1.thirsty);
  print(water.liter);
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
  void drinkWater(Water water) {
    thirsty = thirsty - 10;
    water.drink();
  }
}

class Water {
  double liter = 2.0; //물 2리터

  void drink() {
    liter -= 0.1;
  }
}
