import 'package:class_f_story/_core/utils/exception_handler.dart';
import 'package:class_f_story/_core/utils/m_http.dart';
import 'package:class_f_story/data/gbm/session_gvm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    //자동 로그인 호출
    _checkLoginStatus();
    //1. 화면 렌더링 시키기 전에 로그인 유무 확인 메서드
  } //end of initState

  Future<void> _checkLoginStatus() async {
    try {
      //i/o 발생 시킴
      String? accessToken = await secureStorage.read(key: 'accessToken');
      if (accessToken == null) {
        _navigateToLogin();
      } else {
        SessionGVM sessionGVM = ref.read(sessionProvider.notifier);
        await sessionGVM.autoLogin(accessToken);
      }
    } catch (e, stackTrace) {
      ExceptionHandler.handleException('자동로그인 중 오류발생', stackTrace);
    }
  }

  //로그인 페이지 이동 메서드
  void _navigateToLogin() {
    //2초 동안 대기 후 로그인 페이지 이동 처리
    Future.delayed(const Duration(seconds: 2), () {
      //네비게이션 이동시 mounted을 확인하는 이유는?
      //1. 사용자가 2초 대기 중에 다른 페이지로 이동하면 이 위젯이 dispose 될 수 있음
      //2. disponse 된 위젯을 setState() 또는 Navigator를 호출하면 예외가 발생해서 앱이 종료
      //따라서 mounted 변수는 현재 위젯 화면이 여전히 존재하는가 하는 여부를 판단한다.
      if (mounted) {
        Navigator.popAndPushNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //   ref.read(sessionProvider.notifier).autoLogin();

    return Center(
      child: Image.asset(
        'assets/splash.gif',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
