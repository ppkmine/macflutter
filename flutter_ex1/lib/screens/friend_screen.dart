


//앱을 처음 실행시키거나 BottomNavigationBar 의 사람 아이콘을 선택하면, 사용되는 위젯.
// 해당 화면에서는 친구 목록을 보여주게 됩니다.
import 'package:flutter/material.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(title: Text('친구'),),
    );
  }
}
