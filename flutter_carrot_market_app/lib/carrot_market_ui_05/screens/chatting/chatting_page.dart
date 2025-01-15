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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ChatContainer(chatMessageList[index]);
        },
        itemCount: chatMessageList.length,
        separatorBuilder: (context, index) => Divider(
          height: 0.5,
          thickness: 0.5,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
    );
  }
}
