import 'package:flutter/material.dart';

class NearMePage extends StatelessWidget {
  const NearMePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('NearMePage() 메모리 호출 확인!!!');
    return Center(
      child: Text('Near Me Page'),
    );
  }
}
