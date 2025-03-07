import 'package:flutter/material.dart';

import '../../../widgets/custom_drawer.dart';
import 'widgets/post_write_body.dart';

class PostWritePage extends StatelessWidget {
  PostWritePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      // 하위 위젯에 키 전달
      drawer: CustomDrawer(scaffoldKey),
      appBar: AppBar(
        title: Text('f-story'),
      ),
      body: PostWriteBody(),
    ));
  }
}
