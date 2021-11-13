import 'package:flutter/material.dart';

class RotateImage extends StatelessWidget {
  final String imageUrl;
  final int degree;

  const RotateImage({Key? key, required this.imageUrl, required this.degree})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Transform.rotate()자식 위젯을 회전시키는 역할을 합니다.
    /// angle속성에는 임의의 숫자만 입력해도 회전 가능
    /// 내가 원하는 각도만큼 회전하기 위해 각도 * pi / 180
    return Transform.rotate(angle: degree * 3.14 / 180,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Image(
        image: AssetImage(imageUrl),
        height: 150.0,
      ),
    ),
    );
  }
}
