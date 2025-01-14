import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: xlargeGap),
              Logo('home Page'),
              const SizedBox(height: largeGap),
              TextButton(
                  onPressed: () {
                    //화면 스택 제거

                    Navigator.pop(context);
                  },
                  child: Text('Get Start'))
            ],
          ),
        ),
      ),
    );
  }
}
