//animal 추상클래스를 구현해서 만들어 줘 라고 부탁했어야 함

import 'package:flutter/animation.dart';

abstract class Animal {
  void performAction();
}

class Dog implements Animal {
  @override
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat implements Animal {
  @override
  void performAction() {
    print('야옹 배고파');
  }
}

class Fish implements Animal {
  @override
  void performAction() {
    print('뻐금뻐금 배고파');
  }
}

// 한단계 더  실력을 쌓아보자!!
// 동적 바인딩
void start(Animal animal) {
  //performAction이 동작되도록 구성
  // 단, 강아지든, 고양이든, 물고기든 들어오더라도 performAction() 호출 되게 설계해야해\
  animal.performAction();
}

void main() {
  start(Dog());
  start(Cat());
  start(Fish());
}
