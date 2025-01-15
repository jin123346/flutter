import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chamessage.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/screens/chatting/components/chat_container.dart';

import '../components/appbar_preferred_size.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: AppBarBottomLine(),
        title: Text('채팅'),
      ),
      body: ListView(
        children: [
          //위젯 만들어서 두개 내려줄 생각

          ChatContainer(chatMessageList[0]),
        ],
      ),
    );
  }
}
