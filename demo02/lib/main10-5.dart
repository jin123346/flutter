void main() {
  //오버로딩보다 더 강력한 선택적 매개변수가 있기 때문에 dart에서는 오버로딩이 없다.
  Person p1 = Person(name: "하지니", money: 100000);
}

class Person {
  String name;
  int money = 0;

  Person({required this.name, this.money = 0});
}
