import 'package:flutter/material.dart';
import 'package:flutter_022/models/neighborhood_life.dart';
import 'package:flutter_022/screens/chatting/components/image_container.dart';
import 'package:flutter_022/theme.dart';

class LifeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      //Card 위젯을 활용해서,, 만들고 하단에 둥근 모서리 효과를 제거..
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageContainer(
                borderRadius: 6.0,
                imageUrl: 'https://placeimg.com/200/100/any',
                width: 45.0,
                height: 45.0),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(child: Text(
              lifeTitle,
              style: textTheme().bodyText1,
              maxLines: 2, overflow: TextOverflow.ellipsis,
            ))
          ],
        ),
      ),
    );
  }
}
