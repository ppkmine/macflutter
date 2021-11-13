import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netfilx_ui/constants.dart';
import 'package:netfilx_ui/screens/profile/components/add_card.dart';
import 'package:netfilx_ui/screens/profile/components/profile_card.dart';

///스플래시 화면에서 일정 시간 후 이동하게 될 프로필 선택 화면 입니다.
///
class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'MODU PLAY',
          style: kTitleTextStyle,
        ),
        actions: [
          Icon(
            FontAwesomeIcons.pen,
            size: 18.0,
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '모두의 플레이를 시청할 프로필을 선택하세요',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ), const SizedBox(height: 25.0,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Wrap(
              spacing: 25.0,
              children: [
                ProfileCard(),
                AddCard(),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
