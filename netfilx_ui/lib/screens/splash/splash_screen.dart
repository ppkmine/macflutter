import 'package:flutter/material.dart';
import 'package:netfilx_ui/screens/profile/profile_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      /// 프로필 선택화면은 앱을 실행했을때 한번만 보여지는 프로그램...
      /// pushReplaceMentNamed를 이용하면 프로필 선택화면을 보관해 두지
      /// 않고 버리기 때문에 다시 돌아가는 일을 방지..
      Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'MODU PLAY',
          style: TextStyle(
            color: Colors.red,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
