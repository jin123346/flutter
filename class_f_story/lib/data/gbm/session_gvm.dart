import 'package:class_f_story/_core/utils/exception_handler.dart';
import 'package:class_f_story/_core/utils/m_http.dart';
import 'package:class_f_story/data/model/session_user.dart';
import 'package:class_f_story/data/model/user.dart';
import 'package:class_f_story/data/repository/user_repository.dart';
import 'package:class_f_story/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../_core/utils/logger.dart';

//뷰모델에 속성 --> 세션 유지됨
// 뷰모델에 행위 --> 로그인 행위, 로그아웃 행위, 자동 로그인 행위
class SessionGVM extends Notifier<SessionUser> {
  // 뷰모델은 화면에서  사용하는 상태(변수)
  // -> 행위(비즈니스로직) 가질 수 있다.

  //뷰 모델에서 context를 사용하기 위한 방안,
  final mContext = navigator.currentContext!;

  final UserRepository userRepository = UserRepository();
  //로그인 요청

  //회원가입 요청

  //초기값 설정하는 코드
  @override
  SessionUser build() {
    //로그인 전에 초기값
    //state == sessionUser;
    return SessionUser(
        id: null, username: null, accessToken: null, isLogin: false);
  }

  //로그인 행위
// 화면에서 뷰 모델에게 로그인 요청 위임

  Future<void> login(String? username, String? password) async {
    try {
      if (username == null && password == null) {
        // 빈값일 경우 리턴시킴
        return;
      }

      final body = {"username": username, "password": password};

      final (responseBody, accessToken) =
          await userRepository.findByUsernameAndPassword(body);

      if (!responseBody['success']) {
        //사용자에게 로그인 실패 (비번x, id x )
        ExceptionHandler.handleException(
            responseBody['errorMessage'], StackTrace.current);
        return; // 실행의 제어건 반납
      }

      //I/O 시간이 많이 걸리기 때문에 비동기 처리
      // 토큰 안전금고에 보관처리되기
      await secureStorage.write(key: 'accessToken', value: accessToken);

      Map<String, dynamic> resData = responseBody['response'];
      state = SessionUser(
          id: resData['id'],
          username: resData['username'],
          accessToken: accessToken,
          isLogin: true);
      //3. 로그인 이후 인증 권한 필요한 API  접근시에 dio 셋팅해주는
      // 매번 금고에 접근에서 dio 속성 값 변경해서  호출하는것은 불편하다.
      //=> dio 해더에 jwt 토큰 설정 (객체 상태값 추가하기)
      dio.options.headers['Authorization'] = accessToken;

      //pushName 으로 사용하면 -> stack 메모리에 계속 쌓인다 => 그렇다면
      // Navigator.pushNamed(mContext!, '/post/list');
      Navigator.popAndPushNamed(mContext, '/post/list');
      return;
    } catch (e, stackTrace) {
      //모든 예외처리를 잡는곳
      //Ip 주소가 잘못되었을때, server가 종료되어 있을때,
      ExceptionHandler.handleException('서버 연결 실패', stackTrace);
    }
  }

  // 자동 로그인
  //1. 디바이스 기기에 토큰 유무 확인
  //2. 디바이스 토큰 유무 확인
  //3. 토큰 유효성 검사
  //4. SessionUser 상태 갱신
  //5. dio 헤더에 토큰 다시 설정
  //6. 게시글 목록 페이지 이동 처리
  Future<void> autoLogin(String accessToken) async {
    try {
      // String? accessToken = await secureStorage.read(key: 'accessToken');
      //
      // if (accessToken == null) {
      //   // ExceptionHandler.handleException('로그인 페이지로 이동됩니다.', StackTrace.current);
      //   Navigator.popAndPushNamed(mContext, '/login');
      //   return;
      // }
      Map<String, dynamic> resBody =
          await userRepository.loginWithToken(accessToken);

      //validation 유무
      if (!resBody['success']) {
        Navigator.popAndPushNamed(mContext, '/login');
        return;
      }

      //다운캐스팅
      Map<String, dynamic> data = resBody['response'];
      state = state.copyWith(
        id: data['id'],
        username: data['username'],
        accessToken: accessToken,
        isLogin: true,
      );

      //상태변경완료
      dio.options.headers['Authorization'] = accessToken;
      Navigator.popAndPushNamed(mContext, '/post/list');
    } catch (e, stackTrace) {
      ExceptionHandler.handleException('자동 로그인 중 오류 발생', StackTrace.current);
      Navigator.popAndPushNamed(mContext, '/login');
    }
  }

  //로그아웃 행위

  //회원등록 행위
  Future<void> join(String username, String email, String password) async {
    try {
      final body = {
        "username": username,
        "email": email,
        "password": password,
      };
      Map<String, dynamic> responseBody = await userRepository.saveUser(body);

      if (!responseBody['success']) {
        ExceptionHandler.handleException(
            responseBody['errorMessage'], StackTrace.current);
        return;
      }
      // ExceptionHandler.handleException(
      //     '회원가입 성공!', StackTrace.current);
      logger.i('회원가입 성공! $responseBody');
      Navigator.pushNamed(mContext, '/login');
    } catch (e, stackTrace) {
      ExceptionHandler.handleException('회원가입시 오류가 발생함', stackTrace);
    }
  }

  // 로그아웃 행위
  // 0. 예외 처리
  // 1. 디바이스 기기에 토큰 삭제
  // 2. 나의 상태 갱신 -> SessionUser()
  // 3. dio 전역 객체 헤더 토큰 제거 ==> '' 빈 문자열 처리
  // 4. 화면 다 파괴하고 LoginPage 페이지 이동 처리
  Future<void> logout() async {
    try {
      // 1
      await secureStorage.delete(key: "accessToken");
      // 2
      state = SessionUser(
        id: null,
        username: null,
        accessToken: null,
        isLogin: false,
      );
      // 3
      dio.options.headers["Authorization"] = '';
      // 4
      Navigator.pushNamedAndRemoveUntil(
        mContext,
        '/login',
        (route) => false,
      );
    } catch (e, stackTrace) {
      ExceptionHandler.handleException('로그아웃 중 오류 발생', stackTrace);
    }
  }
} //end of sessionGVM

final sessionProvider = NotifierProvider<SessionGVM, SessionUser>(
  () {
    return SessionGVM();
  },
);
