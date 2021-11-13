

import 'package:flutter/material.dart';
import 'package:flutter_09/constants.dart';
import 'package:flutter_09/size.dart';

import '../../styles.dart';

class HomeBodyPopularItem extends StatelessWidget {

  final id;
  final popularList = [
    'p1.jpeg',
    'p2.jpeg',
    'p3.jpeg',
  ];
   HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    /// 인기아이템은 전체화면의 70%의 1/3만큼의 사이즈의 -5의 크기를 가진다.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      ///화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해 최소 제약조건을 잡아준다
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),

    );
  }

 Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}",
          fit: BoxFit.cover,),),
          SizedBox(height: gap_s,),

      ],
    );
 }

 Widget _buildPopularItemStar() {
   return Column(
     children: [
       Row(
         children: [
           Icon(Icons.star, color: kAccentColor),
           Icon(Icons.star, color: kAccentColor),
           Icon(Icons.star, color: kAccentColor),
           Icon(Icons.star, color: kAccentColor),
           Icon(Icons.star, color: kAccentColor),
         ],
       ),SizedBox(height: gap_s,),
     ],
   );
 }

 Widget _buildPopularItemComment() {
   return Column(
     children: [
       Text(
         '깰끔 하고 다 갖춰져 있어요 좋습니다 강추 드려요 .. 나도 여행가고 싶다?',
         style: body1(),maxLines: 3,
         overflow: TextOverflow.ellipsis,
       ),
       SizedBox(height: gap_s,),

     ],
   );
 }

 Widget _buildPopularItemUserInfo() {
   return Row(
     children: [
       CircleAvatar(
         backgroundImage: AssetImage('assets/p1.jpeg'),
       ),SizedBox(width:  gap_s,),
       Column(
         children: [
           Text('경민', style: subtitle1(),

           ),
           Text('korea'),
         ],
       )

     ],
   );
 }
}
