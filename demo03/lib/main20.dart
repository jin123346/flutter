//믹스인 사용해보기
//여러 계층에서 코드를 재사용 할 수 있도록 하는 코드의 조각이다.

mixin Engine {
  int power = 5000;
}
mixin Wheel {
  String wheelName = '4륜구동 바퀴';
}

//mixin을 가져올때는  with을 사용함
class BMW with Engine, Wheel {
  final String engineType;

  BMW(this.engineType) {
    // 조건에 따라 power 값 설정
    if (engineType == 'V8') {
      power = 8000;
    } else if (engineType == 'V6') {
      power = 6000;
    } else {
      power = 5000; // 기본 값
    }
  }
  void display() {}
}

void main() {
  BMW bmw1 = BMW('V8');
  print(bmw1.power);
  print(bmw1.wheelName);

  // 상속 구조를 사용하면 단일 상속만 허용한다.
  // 믹스인을 사용하면 여러계층에서 코드의 조각들을 편하게 가져올 수 있다.
  // 단 믹스인은 Mixin Engine 이 인스턴스화 되는것이 아니다.
  //Wheel  wh  = Wheel(); => 믹스인은 인스턴스화 시킬 수 없다. 그냥 구성요소

  //만약 믹스인을 인스턴스화 시키고 싶다면 ?
}
