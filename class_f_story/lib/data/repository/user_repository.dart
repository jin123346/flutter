import 'package:dio/dio.dart';

import '../../_core/utils/logger.dart';
import '../../_core/utils/m_http.dart';
import '../model/user.dart';
import 'dart:convert';

class UserRepository {
  const UserRepository();
  //회원가입 요청

  //json array 이거나, object이거나 둘중에 선택되어야함

  //responseDTO         requestDTO
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> reqData) async {
    Response response = await dio.post('/join', data: reqData);

    //규칙1 repostiroy 영역에서는 응답 http 전체를 받아서
    //가능한 뷰모델에 http body영역만 던져준다.  => response.data부분만
    //response.header / response.data - body부분
    Map<String, dynamic> responseBody = response.data;
    logger.e(responseBody);
    return responseBody;
  }

  //로그인 요청
  //레코드 문법을 사용 => dto 설계 없이 바로 리턴() 괄호 시작
  //dart 3.0 이상부터 사용가능
  // 보통 통신하는 코드에서 기본적으로 예외처리는 무조건 해야함
  // 뷰 모델이 respository를 사용하는 구조
  Future<(Map<String, dynamic>, String?)> findByUsernameAndPassword(
      Map<String, dynamic> reqData) async {
    Response response = await dio.post('/login', data: reqData);
    //HTTP 응답 메세지(이미지화)
    Map<String, dynamic> responseBody = response.data;
    String? accessToken = response.headers.value('Authorization');
    return (responseBody, accessToken);
  }

  // 자동로그인
  // 매번 앱을 실행시 로그인 요청하는것은 귀찮고, 사용자 경험면에서도 떨어짐
  // ---> 서버 --> 인증 사용자 판별 --> 인증--> jwt 토큰
  // 로그인 --> 로컬 --> jwt 토큰(- 기기에서 토큰 꺼내서 다시 서버로 던저 봐야 함)

  Future<Map<String, dynamic>> loginWithToken(String token) async {
    Response response = await dio.post('/auto/login',
        options: Options(headers: {'Authorization': token}));

    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }

  Future<(Map<String, dynamic>, String)> readUser(
      Map<String, dynamic> reqData) async {
    Response response = await dio.post('/login', data: reqData);
    Map<String, dynamic> responseBody = response.data;
    logger.d(responseBody);
    String? accessToken = response.headers['Authorization']?[0] ?? '';
    logger.i('response Header!! Token $accessToken}');
    List<String> access = accessToken.split(" ");
    logger.i('access Token만 : ${access[1].trim()}');

    //jwt 토큰 파싱
    try {
      logger.i('jwt 토큰 확인 : ${response.headers['Authorization']?[0]}');
      accessToken = response.headers['Authorization']![0];

      //레고드 문법
      // 위치기반 레코드 문법
      // 명명기반 레코드 문법
      return (responseBody, accessToken);
    } catch (e) {
      logger.e('jwt 파싱 오류');
    }

    return (responseBody, '');
  }

  //사용자 등록 요청
  Future<Map<String, dynamic>> saveUser(Map<String, dynamic> reqData) async {
    Response response = await dio.post('/join', data: reqData);
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }
}
