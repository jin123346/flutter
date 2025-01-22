import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common.utils/logger.dart';

//1 창고 안에서 관리할 데이터 선정
//기본 데이터타입, 클래스 묶음

String fruit = '사과';

//창고 만들기 Store  =>  창고 만들때 그 규격은 StateNotifier 임
class FruitStore extends StateNotifier<String> {
  //super._state는 전달 받은 data를 상태로 등록시키는 과정이다. (마치 바코드 등록) 처리
  FruitStore(super.state); // state 는 창고 안에서 관리할 녀석

  // 창고 안에는 관리할 상품도 존재할 수 있고, 편하게 관리할 머신도 존재할 수 있다.

  //창고 안에 데이터를 변경할 수 있는 기능을 만들어 주자

  void changeData(String data) {
    state = data;
    logger.d('${state}');
  }
}

//3. 창고 관리자에게 창고를 등록하고 관리하도록 설정하자.

final fruitProvider = StateNotifierProvider<FruitStore, String>((ref) {
  return FruitStore(fruit);
  //그 안에 fruit를 넣어서 fruit에 대한 상태관리를 하는 것
});
