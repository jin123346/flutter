import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chamessage.dart';

import '../../components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatContainer(this.chatMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                //이름이 있는 생성자 =>
                //한 문장에 복잡한 텍스트를 구성을 위해 사용함
                Text.rich(
                  //재귀적 텍스트 표현
                  // 하나의 텍스트 조각안에 또 다른 텍스트 조각이 포함될 수 있도록 설계 되어있다.
                  TextSpan(
                    children: [
                      TextSpan(
                        text: chatMessage.sender,
                        style: TextTheme().bodyLarge,
                      ),
                      TextSpan(
                          text: chatMessage.location,
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      TextSpan(
                          text: '· ${chatMessage.sendDate}',
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                ),
                Text(
                  chatMessage.message,
                  style: TextTheme().bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
              ],
            ),
          ),
          Visibility(
            visible: chatMessage.imageUri != null,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ImageContainer(
                width: 50,
                height: 50,
                borderRadius: 10.0,
                imgUri: chatMessage.imageUri ?? '',
              ),
            ),
          )
        ],
      ),
    );
  }
}
