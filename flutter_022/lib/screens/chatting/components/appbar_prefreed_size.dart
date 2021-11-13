import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  var height = 0.5;
  //AppBar bottom 속성에는 PreferredSize 위젯을 사용해야
  //한다.. PreferredSize 위젯은. 자식 위젯에게도..
  //어떤 제약을 부과 하지 않고 부모 위젯에게 공간을 차지하는
  //크기만을 알려주는 위젯..

  return PreferredSize(
      child: Divider(
        thickness: height,
        height: height,
        color: Colors.grey,
      ),
      preferredSize: Size.fromHeight(height));
}
