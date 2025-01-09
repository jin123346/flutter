// 팀장이 선임 개발자가 물고기 소리나는 프로그램을 만들어 달라  요청을 함
class Dog {
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat {
  void performAction() {
    print('야옹 배고파');
  }
}

class Fish {
  void hungry() {
    print('뻐금뻐금 배고파');
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();
  d.performAction();
  c.performAction();

  Fish f = Fish();
  f.hungry();
  //f.performAction(); => 동적인 코드로 몰랐다면 오류가 발생된다.
  //팀장의 잘못입니다
}
