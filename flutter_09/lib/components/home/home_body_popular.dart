

import 'package:flutter/material.dart';
import 'package:flutter_09/components/home/home_body_popular_item.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeBodyPopular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],

      ),
    );
  }

 Widget _buildPopularTitle() {
    return Column(
      children: [
        Text('한국 숙소에 직접 다녀간 게스트의 후기',
        style: h5(),
        ),
        Text('게스트 후기 2,5000,000 개 이상, 평균 평점 4.7점(5점 만점)',
        style: body1(),),
      SizedBox(height: gap_m,),
      ],

    );
 }

 Widget _buildPopularList() {
   return Wrap(
     children: [
       ///id 값은 사진을 선택하기 위해 필요하다.
       HomeBodyPopularItem(id: 0),
       SizedBox(width: 7.5,),
       HomeBodyPopularItem(id: 1),
       SizedBox(width: 7.5,),
       HomeBodyPopularItem(id: 2),
     ],
   );
 }
}
