//논리연산자
void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  // T  && T => true;
  print(isRainy && hasUmbrella); // false;
  print(hasUmbrella && isRainy); // 빠른 평가 => 이미 false이기 때문에

  //or
  print(isRainy || hasUmbrella); //  빠른 평가  true
  print(hasUmbrella || isRainy); // true

  //Not
  print(!isRainy); // false
  print(!hasUmbrella); //true

  String greeting = "Hello";
  String name = "Dart";
  print(greeting + " " + name);

  print('${greeting} ${name}');
}
