import 'package:flutter/material.dart';
import 'package:flutter_09/styles.dart';

class CommimFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  ///required 키워드는 선택적 매개변수 {} 안에서 꼭 받아야 하는 값을 설정할수가 있습니다.
  const CommimFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,

          /// TextFormField 내부 세로 정렬,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ))),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            ))
      ],
    );
  }
}
