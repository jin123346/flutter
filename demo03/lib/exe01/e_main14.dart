void main() {
  String? userName = getNullAbleName(name: '홍길동');
  int? userNameLength = userName?.length ?? 0;

  print('사용자 이름 : ${userName}');
  print('사용자 이름의 길이 : ${userNameLength}');

  String finalUserName = userName ?? 'KimYuSin';

  String upperOrNoName = userName?.toUpperCase() ?? 'NoName';
  String upperName = finalUserName.toUpperCase();
  String LowerName = finalUserName.toLowerCase();

  print('finalUserName : ${finalUserName}');
  print('upperOrNoName : ${upperOrNoName}');
  print('upperName : ${upperName}');
  print('LowerName : ${LowerName}');
}

String? getNullAbleName({String? name, int? age}) {
  return name;
}
