//소문자연결대문자 - 카멜
//표기법 - 대문자  - 파스칼 케이스
class Animal {
  //상수(final) - 한번은 반드시 초기화되어야 하는 변수
  final String name;

  //생성자 강제성()
  Animal(this.name);
}

//Dog 는 동물이다.
class Dog extends Animal {
  Dog(String name) : super(name); // 해당 값을 super에 전달하는 방법

  void bark() {
    print('멍멍!');
  }
}

void main() {
  Dog d1 = Dog('바둑이');
  print(d1.name);
  d1.bark();

  Dog d2 = Dog('흰둥이');
  print(d2.name);
  d2.bark();
}
