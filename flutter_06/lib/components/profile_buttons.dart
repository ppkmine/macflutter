

import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

 Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        print('Follw 버튼이 클릭됨');
      },
      child: Container(
        ///컨테이너 내부 Text 위젯 정렬시 사용
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text('Follow', style: TextStyle(color: Colors.
        white),),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(10),
          //컨테이너 모서리를 둥글게.
        ),
      ),
    );
 }

 Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print('Message 버튼이 클릭됨');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150, height: 45,
        child: Text('Message', style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(), ///테두리에 선을 줍니다
        ),
      ),
    );
 }
}
