class Animal {
  late final String name;

  Animal(this.name) {
    print('Animal 생성자 호출()');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name) {
    print('Dog 생성자 호출()');
  }

  void bark() {
    print('멍멍!!');
  }
}

void main() {
  Animal d1 = Dog("허비");
  print('d1 의 이름 : ${d1.name}');

  (d1 as Dog).bark();
}
