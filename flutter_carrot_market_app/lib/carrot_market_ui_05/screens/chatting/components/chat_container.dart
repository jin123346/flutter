import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chamessage.dart';

import '../../components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatContainer(this.chatMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Row(
        children: [
          ImageContainer(
              borderRadius: 50,
              height: 50,
              width: 50,
              imgUri: chatMessage.profileImage),
        ],
      ),
    );
  }
}
