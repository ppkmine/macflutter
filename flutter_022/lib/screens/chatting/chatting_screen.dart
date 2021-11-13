import 'package:flutter/material.dart';
import 'package:flutter_022/screens/chatting/components/chat_container.dart';

import '../../models/chat_message.dart';
import 'components/appbar_prefreed_size.dart';


class ChattingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅', style: TextStyle(
          color: Colors.black,
        ),),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(chatMessageList.length,
                (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      )
    );
  }
}
