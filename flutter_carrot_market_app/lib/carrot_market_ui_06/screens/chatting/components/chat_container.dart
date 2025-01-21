import 'package:flutter/material.dart';

import '../../../models/chamessage.dart';
import '../../components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatContainer(this.chatMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageContainer(
              borderRadius: 50,
              height: 50,
              width: 50,
              imgUri: chatMessage.profileImage),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('${chatMessage.sender} '),
                    Text(
                      '${chatMessage.location} • ${chatMessage.sendDate}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Text(
                  '${chatMessage.message}',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
              visible: chatMessage.imageUri != null,
              child: ImageContainer(
                height: 50,
                width: 50,
                imgUri: chatMessage.imageUri ?? '',
                borderRadius: 10,
              )),
        ],
      ),
    );
  }
}
