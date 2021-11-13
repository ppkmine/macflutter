

import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  
  final GridCategoryMenu item;
  
  const ImageTextCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      /// 카드위젯의 기본 라운드 처리된 모양을 제거합니다
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      ///카드 위젯 기본 마진 값을 0으로 처리합니다
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          
          Expanded(
              flex: 3,
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.image), fit: BoxFit.cover),
              )
            ),
          ),
      Expanded(child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            item.title,
            style: TextStyle(fontSize: 13),
          ),
        ),
      )
    ),
        ],
      ),
    );
  }
}
