import 'package:flutter/material.dart';

import '../../../carrot_market_ui_05v2/models/chamessage.dart';
import '../../../carrot_market_ui_05v2/screens/chatting/components/chat_container.dart';
import '../../../carrot_market_ui_05v2/screens/components/appbar_preferred_size.dart';

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
          children: List.generate(chatMessageList.length,
              (index) => ChatContainer(chatMessageList[index]))),
    );
  }
}
