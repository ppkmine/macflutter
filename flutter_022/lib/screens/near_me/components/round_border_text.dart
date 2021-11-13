import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  //위젯의 title로 사용할 String 타입의 값을 넘겨 받습니다.
  final String title;

  //위젯의 position 값을 넘겨 받습니다.
  final int position;

  const RoundBorderText({Key? key, required this.title, required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(width: 0.5, color: Colors.grey),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
