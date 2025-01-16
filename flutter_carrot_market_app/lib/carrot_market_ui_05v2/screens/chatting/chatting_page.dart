import 'package:flutter/material.dart';

import '../../models/chamessage.dart';
import '../components/appbar_preferred_size.dart';
import 'components/chat_container.dart';

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
