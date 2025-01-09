//상속은 부모가 가진 상태(변수)와 행위(메서드)를 자식이 물려받는 것과 동시에 다형성이 성립을 해야합니다.
//(바텀업 방법으로 설계를 해야함)

//다형성이란 polymorphism => 다양한 형태로 바라볼 수 있다.
// 만약 BMW라는 클래스와 제네시스 클래스가 엔진 클래스를 상속한다면?
// 과연 그것은 정상적인 설꼐가 맞을까요 ?
//= > 정답 아니요! , 다형성이 성립하지 않기 때문에 잘못된 상속이라고 할 수 있다.
// 즉 다형성이란 BMW에게 너 엔진이야? 라고 물었을때 , "어 나 엔진이야" 라고 답을 할 수 있어야 한다.(즉 잘못된 상속) => composition관계

class Burger {
  String? b_name;

  Burger() {
    print('나는 버거');
  }
}

class CheeseBurger extends Burger {
  String? ch_name;
  CheeseBurger() {
    print('치즈버거');
  }
}

//코드의 시작점
void main() {
  CheeseBurger cb = CheeseBurger();
  cb.b_name = '치즈버거'; // 당연히 보임
  cb.ch_name = '맥도날드 치즈버거';
  //주요 핵심 개념
  // 치즈 버거는 다형을 가집니다.

  //업캐스팅!!
  Burger b2 = CheeseBurger();
  b2.b_name = '치즈'; //
  //b2.ch_name 안보임!!!

  //다운캐스팅 = 강제형변환
  Burger b3 = CheeseBurger();
  CheeseBurger b4 = b3 as CheeseBurger;
  b4.ch_name = '즈치';
  print('버거 데이터 타입에서 ch_name을 호출하자 ${(b3 as CheeseBurger).ch_name}');

  Burger b5 = CheeseBurger();
}
