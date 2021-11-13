import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/screen/signin/components/kurly_sign_from.dart';
import 'package:flutter_market_kurly/theme.dart';

class SignInScreen extends StatelessWidget {

  ///flutter가 이 화면을 요청할때 경로의 이름으로 사용됩니다.
  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('로그인', style: textTheme().subtitle1?.copyWith(
          color: Colors.black),
        ),
        ///이전 화면으로 되돌아 가는 아이콘(화살표)를 자동으로 만들어 줍니다.
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: ()  => Navigator.pop(context),
        ),bottom: PreferredSize(
        child: Divider(),
        preferredSize: Size.fromHeight(1.0),
      ),
      ),
      body: KurlySignFrom(),
    );
  }
}
