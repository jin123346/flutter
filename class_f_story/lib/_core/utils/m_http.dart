import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//집 api 주소
// 학원 사무실 api 주소
//전역변수로 선언
final baseUrl = 'http://192.168.0.127:8080';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
    contentType: 'application/json; charset=utf-8',

    //주의 ! 200 번 이외에는 모두 에러로 간주하게 기본값 설정되어 있음 !!
    //다른 상태코드 다 허용
    validateStatus: (status) => true,



  ),
);

//민감한 데이터를 보관하는 안전한 금고 역할을 한다.
//중요한 데이터 보관소(금고생성)
const secureStorage = FlutterSecureStorage();
