import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/theme.dart';

class ProductFilterButton extends StatefulWidget {
  @override
  _ProductFilterButtonState createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  ///PopupMenuButton의 초기값입니다.
  String _selectedUItem = '신상품순';

  /// 메뉴로 사용할 리스트
  List _options = ['신상품순', '인기순', '혜택순'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: Offset(0, 0),
      icon: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('$_selectedUItem',
                  style: textTheme().bodyText2?.copyWith(color: Colors.black)),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          onPressed: null,
        ),
      ),
      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) {
        /// 리스트의 map 함수를 사용해서 리스트의 값을 하나씩 꺼내서
        /// PopupMenuItem위젯을 생성하고 반환
        return _options
            .map((option) => PopupMenuItem(
                  child: Text(
                    '$option',
                    style: textTheme().bodyText2,
                  ),
                  value: option,
                )).toList();
      },
    );
  }
}
