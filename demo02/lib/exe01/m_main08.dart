void main() {
  //응용 코드 만들어 보기 - 익명함수
  var add = (a) {
    return a + a;
  };
  print('같은 수 더하기 : ${add(2)}');

  var mult = (a, b) {
    return a * a * b;
  };
  print('부피  : ${mult(2, 3)}');

  var remain = (c, eat) {
    return c - eat;
  };

  print('남은 량 : ${remain(1000, 20)}');

  dynamic add23 = (c, d) {
    return c + d;
  };
  //dynamic은 런타임 오류 가능성을 높이기 때문에 필요할 때만 사용하는 것이 안전합니다.

  print('다이나믹도 되나 ? : ${add23(2, 3)}');
  print('문자열은 ? : ${add23('2', '3')}');

  var eee = (a, b) {
    return a * b * add23(2, 3);
  };
  print('이거되나 ? : ${eee(2, 3)}');

  List<int> numbers = [1, 2, 3, 4, 5];

  var mul = (a) {
    return print(a * 2 + ' ');
  };
  numbers.forEach((element) {
    print(element * 2);
  });

  List<int> even = numbers.where((num) => num % 2 == 0).toList();

  List<int> squaredNumbers = numbers.map((number) => number * number).toList();
  List<int> listA = [1, 2, 3];
  List<int> listB = [4, 5, 6];
  List<int> sumList =
      List.generate(listA.length, (index) => listA[index] + listB[index]);
}
