class Burger {
  String? name;
  Burger(String? name) {
    print('버거 생성자 호출()');
    this.name = name;
  }
}

class CheeseBurger extends Burger {
  //자식에 태어나기 전에 부모가 먼저 태어나야 자식이 존재할 수 있다.

  //Dart  문법에서 허용안함
  // CheeseBurger(String? name) {
  //   print('치즈버거 생성자 호출()');
  //   //super(name); //자바문법시
  //   //super. 부모의 변수에 접근 문법
  //   //super(); 부모의 클래스의 생성자 호출 문법이다. 즉 , Burger(); 치환
  // }

  //이니셜라이즈 키워드를 살펴보자
  //dart에서 부모 생성자에 매개변수가 있다면
  //이니셜라이즈 키워드와 super 키워드를 통해 값을 전달한다.
  // CheeseBurger(String? name) : (name) {
  //   print('치즈버거 생성자 호출()');
  //   print('치즈버거이름 : ${name}');
  // }

  //이 방법도 가능
  CheeseBurger(super.name) {
    print('치즈버거 생성자 호출()');
  }
}

void main() {
  CheeseBurger ch = CheeseBurger('불고기치즈버거');
  print('치즈버거!!! 이름 : ${ch.name}');

  // 문제 - 사용시점, 치즈버거 생성자 호출시 인수로 전달 받은 문자열을
  // 부모 클래스인 name 변수에 저장하고 싶다면 어떻게 코드를 작성하지?
  // super 키워드는 자식이 부모의 객체를 참조할 수 있다.
}
