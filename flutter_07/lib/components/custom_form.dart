

import 'package:flutter/material.dart';
import 'package:flutter_07/components/custom_text_form_field.dart';
import 'package:flutter_07/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();   ///글로벌 키

  @override
  Widget build(BuildContext context) {
    return Form(
      /// 글로벌 key를 Form 태그에 연결하여, 해당 key로 Form의 상태를 관리 할수 가 있다.

      key: _formKey,
      child: Column(
        children: [
          CustomTextForm_Field('Email'),
          SizedBox(height: medium_gap),
          CustomTextForm_Field('Password'),
          SizedBox(height: medium_gap),
          TextButton(
            onPressed: () {
              if(_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/home');
              }
              },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
