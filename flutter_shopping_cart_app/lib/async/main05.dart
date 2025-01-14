void main() async {
  print('메인함수 시작 ');
  // var result2 = addNumber1(1, 2);
  // print('addnumber1 결과 : ${result2}');

  await addNumber2(2, 5);
  print('메인함수 종료');
}
//
// Future<int> addNumber1(int n1, int n2) async {
//   print('addNumber1 함수 시작');
//   var result = 0;
//   await Future.delayed(Duration(seconds: 3), () {
//     result = n1 + n2;
//   });
//   print('addNumber1 연산 완료 : ${result}');
//
//   //return result;
//   return Future.value(result);
// }

//await가 없다면  문제가됨
Future<void> addNumber2(int n1, int n2) async {
  print('addNumber1 함수 시작');
  var result = 0;
  await Future.delayed(Duration(seconds: 3), () {
    result = n1 + n2;
  });
  print('addNumber2 연산 완료 : ${result}');

  //return result;
}
