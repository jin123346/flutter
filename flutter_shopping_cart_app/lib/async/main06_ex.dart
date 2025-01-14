void main() async {
  print('main 함수 시작');

  await mutliple(2, 3);

  print('main 함수 종료');
}

Future<void> mutliple(int n1, int n2) async {
  int result = 0;
  await Future.delayed(Duration(seconds: 5), () => result = n1 * n2);
  print('결과값 : ${result}');
}
