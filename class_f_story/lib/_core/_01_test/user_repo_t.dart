//userRepository에서 던지는 테스트 해보자

import 'package:class_f_story/data/repository/user_repository.dart';
import 'package:flutter/material.dart';

import '../utils/logger.dart';

void main() async {
  UserRepository userRepository = UserRepository();

  //테스트1 회원 등록 요청
  Map<String, dynamic> saveUser = await userRepository.saveUser(
    {
      "username": "hello29",
      "password": "1234",
      "email": "hello29@nate.com",
      "imgBase64":
          "data:images/jpg;base64,yrxsJ0Eg29JPHQXDFSZhEhYuhofZaFOzLh8wTob3JVMuFC4kX5CqWYBDubwLt23VjmQ4ZLXMMcKNly2Db2w2EHwDgeR844F1b91tUBeuALOzb2yxz0MSBMOlEhBtLGzVW0UbIicvHgOrTFGupuXW8OOQI2rzyIFQ2IwnBcXWQo72d7k9Ai88QZa6qYsd23YAn0KyvoTOKOXN6EWY1ZIVh73TbkQV4sx64WEFCLHkKqKWm16JhEhUJNzwaQQWiXFBl2JAyZ5CpBanN2UxRZcPntH2Nk9lcllPkwltiNcNwxJqcBplUMhTOS4hdfYpkJxL1it1CpsCBlFYdeMFHJn3XI8qQDgccUB0gar5F9pyyTaAE9J9ka4PRTBv5xgiPRB2Tpse69fzqNFpLJWuuy0HhKrLZ7vJCsy8Ykf226BiiA42v0WLvWtPchfLJJnuA2Y8XBICyiHFO8cBULOIqD0H0f4xn92k8bjdtJ1gw0nRiy3HevT632cGBOtvXMY4KJ9S9LFBsUkGeYjdHcTvVR4ZSvto6elYwMFHiPlcUGrI6g5y1AAYNbf2PHSXkJ0KGsqeOaVbYGP7WViL7au9GOHT9lptz49u1td7RRjqU5MKDIYoYDCpuxWoSJEHNVegho8nrmRtzLMBgm9RonQNa4rzDtdVdppE20KOIm8Hrfr7H5JPHwVjSzZsabktSbLWnVEaoALQkbgWhg2FcbLCmhg7lYDOAzYWd3rUIFNRjA4m1BQ6zVGozEIXL1FgptL5u0TRmA1ISAHUBtU2FpmQ6Vc0UQRfutLM6qNLJlKSHCQ7QPJSoAAibFLKKv2JxyKWjpVfRKKcBRS5jVzAby1y1hr3XmU22zPCPvyDT7ZqJMxHfZovUawHYQ96I3wQGO9vFXAvreDn62kOFp5A8CXHUaMBoPzugoXl8ywejlzEyz2TIR1ObRjZsHoeeDbOcMJO3SNVFs059G4ed2rdvX3ptYR00fsgZlDtwfVxVH4paCbH"
    },
  );
  logger.i(saveUser);

  //로그인 요청
  (Map<String, dynamic>, String?) loginuser = await userRepository
      .findByUsernameAndPassword({"username": "ssar", "password": "1234"});
  logger.d(loginuser);

  //회원등록 요청

  //자동로그인

  (Map<String, dynamic>, String) loginUser =
      await userRepository.readUser({"username": "ssar", "password": "1234"});
  logger.d('loginuser- responseDTO : ${loginUser.$1['response']['id']}');
  logger.d('loginuser- responseDTO : ${loginUser.$1['response']['password']}');
  logger.d('loginuser- responseDTO : ${loginUser.$1['response']['username']}');
  logger.d('loginuser- accessToken : ${loginUser.$2}');
}
