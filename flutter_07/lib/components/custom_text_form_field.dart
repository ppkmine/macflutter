

import 'package:flutter/material.dart';

import '../size.dart';

class CustomTextForm_Field extends StatelessWidget {
  const CustomTextForm_Field( this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
      SizedBox(height: small_gap,),
        TextFormField(
          /// !는 null이 절대 아니다 라고, 컴파일러에게 알려주는것,
          validator: (value) => value!.isEmpty
          ? 'Please enter some text' :null,
          ///값이 없으면 Please
          obscureText:
          text == 'Password'  ? true : false,
          decoration:  InputDecoration(
            hintText: 'Enter $text',
            enabledBorder: OutlineInputBorder(
              ///기본 TextFormField 디자인
                borderRadius: BorderRadius.circular(20)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              /// 에러 발생시 TextFormField 디자인,
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )
          ),
        )
      ],
    );
  }
}
