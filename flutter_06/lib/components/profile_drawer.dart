

import 'package:flutter/material.dart';

///ProfileDrawer 위젯에서는 넓이가 200인 파란색 Container를 간단히.고고


class ProfileDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      /// double.infinity는 해당 위젯이 차지할수 있는 최대 범위로 확장 할때 사용. 합니다.
      color: Colors.redAccent,
    );
  }
}
