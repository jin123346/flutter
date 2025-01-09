void main() {
  int add(a, b) => a + b;
  // 리스트의 각 요소를 제곱하는 화살표 함수를 작성하세요.
  List<int> squareList(List<int> numbers) => numbers.map((e) => e * e).toList();
  print(squareList([1, 2, 3, 4, 5])); // 출력: [1, 4, 9, 16, 25]

  // 문자열 길이를 계산하는 화살표 함수를 작성하세요.
  List<int> getLengths(List<String> words) =>
      List.generate(words.length, (i) => words[i].length);
  print(getLengths(["Dart", "Flutter", "Arrow"])); // 출력: [4, 7, 5]

  // 숫자가 짝수인지 확인하는 화살표 함수를 작성하세요.
  bool isEven(int number) => number % 2 == 0;

  print(isEven(4)); // 출력: true
  print(isEven(7)); // 출력: false

  // 짝수만 필터링하는 화살표 함수를 작성하세요.
  List<int> filterEvens(List<int> numbers) =>
      numbers.where((element) => element % 2 == 0).toList();
  print(filterEvens([1, 2, 3, 4, 5, 6])); // 출력: [2, 4, 6]

  // 특정 단어를 포함한 문자열만 필터링하는 화살표 함수를 작성하세요.
  List<String> filterWords(List<String> words, String keyword) =>
      words.where((element) => words.contains(keyword)).toList();

  print(
      filterWords(["Dart is fun", "I love Flutter", "Hello World"], "Flutter"));
  // 출력: ["I love Flutter"]

  // 두 리스트의 곱을 계산하는 화살표 함수를 작성하세요.
  List<int> multiplyLists(List<int> listA, List<int> listB) =>
      List.generate(listA.length, (index) => listA[index] * listB[index]);

  print(multiplyLists([1, 2, 3], [4, 5, 6])); // 출력: [4, 10, 18]

  // 곱셈 클로저를 생성하는 화살표 함수를 작성하세요.
  Function makeMultiplier(int factor) => (int number) => number * factor;

  Function multiplier = makeMultiplier(3);

  print(multiplier(5)); // 출력: 15
  print(multiplier(7)); // 출력: 21

  // 두 숫자 중 큰 값을 반환하는 화살표 함수를 작성하세요.
  int max(int a, int b) => a >= b ? a : b;

  print(max(10, 20)); // 출력: 20

  // 문자열 리스트를 길이 순으로 정렬하는 화살표 함수를 작성하세요.
  List<String> sortByLength(List<String> words) =>
      words..sort((a, b) => a.length.compareTo(b.length));

  print(sortByLength(["Flutter", "Dart", "Programming"]));
  // 출력: ["Dart", "Flutter", "Programming"]
}
